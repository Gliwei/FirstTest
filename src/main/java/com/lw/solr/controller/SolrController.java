package com.lw.solr.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lw.basic.entity.Spec;
import com.lw.basic.service.CategoryService;
import com.lw.basic.service.SpecService;
import com.lw.solr.service.SolrService;
import com.lw.solr.vo.CommodityVo;

@Controller
@RequestMapping("/solr")
public class SolrController {
	
	@Autowired SolrService solrService;
	@Autowired CategoryService categoryService;
	@Autowired SpecService specService;
	
	@SuppressWarnings("resource")
	@RequestMapping("/query")
	public String query(Model m, String kw) throws SolrServerException, IOException {
		HttpSolrClient client = new HttpSolrClient("http://114.215.223.6:8983/solr/commodity/");
		SolrQuery query = new SolrQuery(StringUtils.isBlank(kw)?"":"*"+kw+"*");
		
		m.addAttribute("kw", kw);
		/** facet */
		query.setFacet(true);
		query.addFacetField("spec"); // 设置需要facet的字段
		query.setFacetLimit(10); // 限制facet返回的数量
        QueryResponse response = client.query(query);
        Map<String, List<String>> facets = solrService.getFacets(response);
        m.addAttribute("facets", facets);
        String[] ids = {};
        ids = facets.keySet().toArray(ids);
        Map<String, Spec> spec = specService.getSpecMap(ids);
        m.addAttribute("spec", spec);
        
        /** 商品信息 */
        SolrDocumentList docList = response.getResults();
        List<CommodityVo> clist = new ArrayList<CommodityVo>();
        for(SolrDocument doc:docList){
        	CommodityVo cvo = new CommodityVo();
        	cvo.setSku(doc.getFieldValue("sku").toString());
        	cvo.setMainPicture(doc.getFieldValue("mainPicture").toString());
        	cvo.setTitle(doc.getFieldValue("title").toString());
        	cvo.setSubtitle(doc.getFieldValue("subtitle").toString());
        	cvo.setSalePrice(new BigDecimal(doc.getFieldValue("salePrice").toString()));
        	clist.add(cvo);
        }
        m.addAttribute("list", clist);
        
        /** 分类 */
        // categoryService.finAll();
        
        return "search/commodity-list";
	}
	
}
