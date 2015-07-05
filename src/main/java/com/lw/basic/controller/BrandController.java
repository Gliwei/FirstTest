package com.lw.basic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lw.basic.entity.Brand;
import com.lw.basic.service.BrandService;

@Controller
@RequestMapping("/bc")
public class BrandController {
	
	@Autowired BrandService brandService;
	
	@RequestMapping("/list")
	public String list(){
		List<Brand> list = brandService.finAll();
		System.out.println(list.size());
		return "";
	}
}
