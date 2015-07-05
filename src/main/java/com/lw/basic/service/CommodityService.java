package com.lw.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lw.basic.dao.CommodityMapper;
import com.lw.basic.entity.Commodity;

@Service
public class CommodityService {
	
	@Autowired CommodityMapper commodityMapper;
	
	public List<Commodity> getAll(){
		return commodityMapper.findAll();
	}
	
	@Transactional
	public Commodity findBySku(String sku){
		commodityMapper.findAll();
		return commodityMapper.findBySku(sku);
	}
}
