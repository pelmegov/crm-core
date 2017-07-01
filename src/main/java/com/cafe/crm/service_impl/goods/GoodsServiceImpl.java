package com.cafe.crm.service_impl.goods;

import com.cafe.crm.dao.goods.GoodsRepository;
import com.cafe.crm.models.estimate.Goods;
import com.cafe.crm.models.estimate.GoodsCategory;
import com.cafe.crm.service_abstract.goods.GoodsCategoryService;
import com.cafe.crm.service_abstract.goods.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;
import java.util.Set;

@Transactional
@Component
public class GoodsServiceImpl implements GoodsService {

	private final GoodsRepository goodsRepository;

	private GoodsCategoryService goodsCategoryService;


	@Autowired
	public void setGoodsCategoryService(GoodsCategoryService goodsCategoryService) {
		this.goodsCategoryService = goodsCategoryService;
	}

	@Autowired
	public GoodsServiceImpl(GoodsRepository goodsRepository) {
		this.goodsRepository = goodsRepository;
	}

	@Override
	public void save(Goods goods) {
		String categoryName = goods.getCategory().getName().trim();
		GoodsCategory categoryInDb = goodsCategoryService.findByNameIgnoreCase(categoryName);
		if (categoryInDb == null) {
			goods.getCategory().setName(categoryName);
			goodsCategoryService.save(goods.getCategory());
		} else {
			goods.setCategory(categoryInDb);
		}
		goodsRepository.save(goods);
	}

	@Override
	public void offVisibleStatus(Long id) {
		Goods goods = goodsRepository.getOne(id);
		goods.setVisible(false);
		goodsRepository.save(goods);
	}

	@Override
	public void offVisibleStatus(long[] ids) {
		List<Goods> goodsList = goodsRepository.findByIdIn(ids);
		goodsList.forEach(goods -> goods.setVisible(false));
		goodsRepository.save(goodsList);
	}

	@Override
	public List<Goods> findByCategoryNameAndDateBetween(String categoryName, LocalDate from, LocalDate to) {
		return goodsRepository.findByCategoryNameIgnoreCaseAndVisibleIsTrueAndDateBetween(categoryName, from, to);
	}

	@Override
	public List<Goods> findByNameAndDateBetween(String categoryName, LocalDate from, LocalDate to) {
		return goodsRepository.findByNameIgnoreCaseAndVisibleIsTrueAndDateBetween(categoryName, from, to);
	}

	@Override
	public List<Goods> findByNameAndCategoryNameAndDateBetween(String name, String categoryName, LocalDate from, LocalDate to) {
		return goodsRepository.findByNameIgnoreCaseAndCategoryNameIgnoreCaseAndVisibleIsTrueAndDateBetween(name, categoryName, from, to);
	}

	@Override
	public List<Goods> findByDateBetween(LocalDate from, LocalDate to) {
		return goodsRepository.findByVisibleIsTrueAndDateBetween(from, to);
	}

	@Override
	public Set<Goods> findByNameStartingWith(String startName) {
		return goodsRepository.findByNameStartingWith(startName);
	}

}
