package com.lw.basic.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lw.basic.entity.Spec;

@Repository
public interface SpecMapper {

	public List<Spec> getSpecMapByIds(String[] ids);
}
