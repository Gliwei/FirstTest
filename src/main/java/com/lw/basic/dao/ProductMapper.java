package com.lw.basic.dao;

import org.springframework.stereotype.Repository;

import com.lw.basic.entity.Product;

@Repository
public interface ProductMapper{

	public Product findBySpu(String spu);
	
}
