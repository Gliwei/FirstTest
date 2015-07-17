package com.lw.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lw.basic.dao.CategoryMapper;
import com.lw.basic.entity.Category;

@Service
public class CategoryService {
	@Autowired CategoryMapper categoryMapper;
	
	public List<Category> finAll(){
		return categoryMapper.selectAllCategory();
	}
}
