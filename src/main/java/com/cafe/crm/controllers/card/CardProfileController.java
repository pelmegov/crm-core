package com.cafe.crm.controllers.card;

import com.cafe.crm.service_abstract.card.CardControllerService;
import com.cafe.crm.service_impl.client.CalculateService;
import com.cafe.crm.service_impl.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CardProfileController {
	@Autowired
	private CardService cardService;

	@Autowired
	private CalculateService calculateService;

	@Autowired
	private CardControllerService cardControllerService;

	@RequestMapping(value = {"/card"}, method = RequestMethod.GET)
	public ModelAndView getCard(@RequestParam("token") Long id) {
		ModelAndView modelAndView = new ModelAndView("card");
		modelAndView.addObject("card", cardService.getOne(id));
		modelAndView.addObject("listCalculate", calculateService.getAllOpen());
		return modelAndView;
	}

	@RequestMapping(value = {"/add-card-to-calculate"}, method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void addCardToCalculate(@RequestParam("idCard") Long idCard,
								   @RequestParam("idCalculate") Long idCalculate) {
		cardControllerService.addCardToCalculate(idCard, idCalculate);
	}

	@RequestMapping(value = {"/add-money"}, method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void addMoney(@RequestParam("idCard") Long idCard,
						 @RequestParam("money") Double money) {
		cardControllerService.addMoney(idCard, money);
	}

}