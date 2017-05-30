package com.cafe.crm.service_impl.client.cardService;

import com.cafe.crm.service_abstract.card.CardControllerService;
import com.cafe.crm.service_impl.client.CalculateService;
import com.cafe.crm.service_impl.CardService;
import com.cafe.crm.models.client.Calculate;
import com.cafe.crm.models.card.Card;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;

@Service
public class CardControllerService_impl implements CardControllerService{

	@Autowired
	private CardService cardService;

	@Autowired
	private CalculateService calculateService;

	public void addCardToCalculate(Long idCard,Long idCalculate) {
		Card card = cardService.getOne(idCard);
		card.setVisitDate(LocalDate.now());
		cardService.add(card);

		Calculate calculate = calculateService.getOne(idCalculate);
		calculate.setCard(card);
		calculateService.add(calculate);
	}

	public void addMoney(Long idCard, Double money) {
		Card card = cardService.getOne(idCard);
		card.setBalance(card.getBalance() + money);
		cardService.add(card);

	}


}
