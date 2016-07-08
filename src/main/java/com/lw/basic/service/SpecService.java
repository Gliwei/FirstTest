package com.lw.basic.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lw.basic.dao.SpecMapper;
import com.lw.basic.entity.Spec;

@Service
public class SpecService {
	@Autowired SpecMapper specMapper;

	public Map<String, Spec> getSpecMap(String[] ids) {
		List<Spec> specList = specMapper.getSpecMapByIds(ids);
		Map<String, Spec> specMap = new HashMap<String, Spec>();
		for(Spec spec : specList) {
			specMap.put(spec.getId(), spec);
		}
		return specMap;
	}
}

