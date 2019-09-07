package com.zhuzhiguang.goods.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.zhuzhiguang.goods.entity.AddressEnum;
import com.zhuzhiguang.goods.entity.CategoryEnum;
import com.zhuzhiguang.goods.entity.Goods;
import com.zhuzhiguang.goods.entity.Shop;
import com.zhuzhiguang.goods.service.GoodsService;
import com.zhuzhiguang.goods.service.ShopService;

@RequestMapping("goods")
@Controller
public class GoodsController {
	
	@Reference
	ShopService shopService;
	
	@Reference
	GoodsService goodsService;
	
	//
	@GetMapping("update")
	public String update(HttpServletRequest request,Integer id) {
		
		List<Shop> shopList = shopService.getShopList();
		
		request.setAttribute("categories", CategoryEnum.values());
		request.setAttribute("addresses", AddressEnum.values());
		request.setAttribute("shops", shopList);
		
		Goods goods = goodsService.findById(id);
		
		
		request.setAttribute("goods", goods);
		
		return "update";
		
	}
	
	@PostMapping("update")
	public String update(HttpServletRequest request,Goods goods) {
		goodsService.update(goods);
		return "redirect:list";
	}
	
	
	//
	@GetMapping("add")
	public String add(HttpServletRequest request) {
		
		List<Shop> shopList = shopService.getShopList();
		
		request.setAttribute("categories", CategoryEnum.values());
		request.setAttribute("addresses", AddressEnum.values());
		
		request.setAttribute("shops", shopList);
		
		return "add";
	}
	

	//
	@PostMapping("add")
	public String add(HttpServletRequest request,Goods goods) {
	
		goodsService.create(goods);
		
		return "add";
	}
	
	@RequestMapping(value ="check",method=RequestMethod.GET)
	@ResponseBody
	public Boolean check(String name) {
		Goods goods = goodsService.getGoodsByName(name);
		return (goods==null);
		
	}
	
}
