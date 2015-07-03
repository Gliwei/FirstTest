package com.lw.test.service;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.lw.test.entity.DemoEntity;

@Service
public class DemoService {
	public DemoEntity getOne(){
		DemoEntity entity = new DemoEntity();
		entity.setId(1);
		entity.setName("Conan");
		entity.setLastModifyDate(new Date());
		return entity;
	}
}
