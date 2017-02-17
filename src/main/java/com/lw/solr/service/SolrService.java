package com.lw.solr.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.solr.client.solrj.response.FacetField;
import org.apache.solr.client.solrj.response.FacetField.Count;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.springframework.stereotype.Service;

import com.lw.solr.vo.SpecVo;

@Service
public class SolrService {
	
	public Map<String, List<SpecVo>> getFacets(QueryResponse response) {
		List<FacetField> facets = response.getFacetFields(); //返回的facet列表
		// map<specId, list<value:count>>
        Map<String, List<SpecVo>> facetMap = new HashMap<String, List<SpecVo>>();
        for (FacetField facet : facets) {
            List<Count> counts = facet.getValues();
            for (Count count : counts) {
                String[] name = count.getName().split(":");
                List<SpecVo> valueList = facetMap.get(name[0]);
                valueList = valueList==null?new ArrayList<SpecVo>():valueList;
                SpecVo vo = new SpecVo();
                vo.setName(name[1]);
                vo.setCount(count.getCount());
            	valueList.add(vo);
            	facetMap.put(name[0], valueList);
            }
        }
        
        return facetMap;
	}
}
