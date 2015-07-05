package com.lw.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lw.basic.dao.BrandMapper;
import com.lw.basic.entity.Brand;

@Service
public class BrandService {
	@Autowired BrandMapper brandMapper;
	
	public List<Brand> finAll(){
		return brandMapper.findAll();
	}
}
