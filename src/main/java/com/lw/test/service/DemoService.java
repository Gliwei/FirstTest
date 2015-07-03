package com.lw.test.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lw.test.dao.DemoDao;
import com.lw.test.entity.DemoEntity;

@Service
public class DemoService {
	
	@Autowired DemoDao demoDao;
	
	public DemoEntity getOne(){
		return demoDao.findOne();
	}
}
