package com.lw.basic.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lw.basic.entity.Brand;

@Repository
public interface BrandMapper {

	public List<Brand> findAll();
}
