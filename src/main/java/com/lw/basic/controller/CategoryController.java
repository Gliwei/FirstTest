package com.lw.basic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lw.basic.entity.Category;
import com.lw.basic.service.CategoryService;

@Controller
@RequestMapping("/cg")
public class CategoryController {
	
	@Autowired CategoryService categoryService;
	
	@RequestMapping("/list.json")
	public @ResponseBody List<Category> list(){
		List<Category> list = categoryService.finAll();
		System.out.println(list.size());
		System.out.println(list);
		return list;
	}
	
	@RequestMapping("/list")
	public String list(Model m){
		List<Category> list = categoryService.finAll();
		// TODO 放入memcached提高效率
		m.addAttribute("list", list);
		
		for(Category c:list){
			print(c, 0);
		}
		return "category";
	}
	
	// 递归打印
	private void print(Category c, int space){
		for(int i=0; i<space; i++ ){
			System.out.print("----");
		}
		System.out.print(c.getName()+" "+(c.getParent()==null?"NULL":c.getParent().getId())+" \n");
		if(c.getChildren()!=null || c.getChildren().size()>0){
			space++;
			for(Category cc:c.getChildren()){
				print(cc, space);
			}
		}
	}
}
