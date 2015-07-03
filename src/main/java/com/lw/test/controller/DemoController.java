package com.lw.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lw.test.entity.DemoEntity;
import com.lw.test.service.DemoService;

@Controller
public class DemoController {
	
	@Autowired DemoService demoService;
	
	@RequestMapping("/demo")
	public String test(Model model){
		System.out.println("TestController.test()");
		DemoEntity entity = demoService.getOne();
		model.addAttribute("entity", entity);
		return "success";
	}
}
