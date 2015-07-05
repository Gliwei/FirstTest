package com.lw.basic.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lw.basic.entity.Commodity;

@Repository
public interface CommodityMapper{

	public Commodity findBySku(String sku);
	
	public List<Commodity> findAll();
	
//	public List<Commodity> findByPage();
}
