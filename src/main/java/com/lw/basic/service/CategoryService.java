package com.lw.basic.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import com.lw.basic.dao.CategoryMapper;
import com.lw.basic.entity.Category;

@Service
public class CategoryService {
	
	@Autowired CategoryMapper categoryMapper;
	@Autowired RedisTemplate<Serializable, Object> redisTemplate;
	
	public List<Category> finAll(){
		ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();  
        Object result = operations.get("CategoryAll");
        if(result!=null) return (List<Category>) result;
		List<Category> dbdata = categoryMapper.selectAllCategory();
		operations.set("CategoryAll", dbdata);
		return dbdata;
	}
}
