package com.lw.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/index")
	public String index(){
		System.out.println("IndexController.index()");
		return "index";
		// return "redirect:/c/list";
	}
}
