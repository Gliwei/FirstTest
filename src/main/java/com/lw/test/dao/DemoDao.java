package com.lw.test.dao;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.lw.test.entity.DemoEntity;

@Component
public class DemoDao {
	public DemoEntity findOne(){
		DemoEntity entity = new DemoEntity();
		entity.setId(1);
		entity.setName("Conan");
		entity.setLastModifyDate(new Date());
		return entity;
	}
}
