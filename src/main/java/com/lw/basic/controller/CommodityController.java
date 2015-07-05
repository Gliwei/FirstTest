package com.lw.basic.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lw.basic.entity.Commodity;
import com.lw.basic.service.CommodityService;


@Controller
@RequestMapping("/c")
public class CommodityController {

	@Autowired CommodityService commodityService;
	
	@RequestMapping("/list")
	public String list(Model model){
		System.out.println("CommodityController.list()");
		model.addAttribute("list", commodityService.getAll());
		return "commodity-list";
	}
	
	@RequestMapping("/{sku}.json")
	public @ResponseBody Commodity findBySku(Model model, @PathVariable("sku") String sku){
		System.out.println("CommodityController.findBySku()");
		return commodityService.findBySku(sku);
	}
}