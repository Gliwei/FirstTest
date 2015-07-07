package com.lw.basic.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
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
		return commodityMapper.findBySku(sku);
	}
	
	public List<Commodity> findByPage(int pageNo, int pageSize){
		pageNo = pageNo - 1;
		RowBounds rowBounds = new RowBounds(pageNo*pageSize, pageSize);
		return commodityMapper.findByPage(rowBounds);
	}
}
