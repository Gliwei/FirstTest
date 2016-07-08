package com.lw.solr.service;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.solr.client.solrj.response.FacetField;
import org.apache.solr.client.solrj.response.FacetField.Count;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.springframework.stereotype.Service;

@Service
public class SolrService {
	
	public Map<String, List<String>> getFacets(QueryResponse response) {
		List<FacetField> facets = response.getFacetFields(); //返回的facet列表
		// map<specId, list<value:count>>
        Map<String, List<String>> facetMap = new HashMap<String, List<String>>();
        for (FacetField facet : facets) {
            List<Count> counts = facet.getValues();
            for (Count count : counts) {
                String[] name = count.getName().split(":");
                List<String> valueList = facetMap.get(name[0]);
                if(valueList!=null) {
                	valueList.add(MessageFormat.format("{0} ({1})", name[1], count.getCount()));
                } else {
                	valueList = new ArrayList<String>();
                	valueList.add(MessageFormat.format("{0} ({1})", name[1], count.getCount()));
                	facetMap.put(name[0], valueList);
                }
            }
        }
        
        return facetMap;
	}
}
