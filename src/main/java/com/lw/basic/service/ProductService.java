package com.lw.basic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lw.basic.dao.ProductMapper;
import com.lw.basic.entity.Product;

@Service
public class ProductService {
	
	@Autowired ProductMapper productMapper;
	
	public Product findBySpu(String spu){
		return productMapper.findBySpu(spu);
	}
	
}
