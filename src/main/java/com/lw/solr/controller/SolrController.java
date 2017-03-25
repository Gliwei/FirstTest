package com.lw.solr.controller;

import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lw.basic.entity.Spec;
import com.lw.basic.service.CategoryService;
import com.lw.basic.service.SpecService;
import com.lw.solr.service.SolrService;
import com.lw.solr.vo.CommodityVo;
import com.lw.solr.vo.SpecVo;

@Controller
@RequestMapping("/solr")
public class SolrController {
	
	@Autowired SolrService solrService;
	@Autowired CategoryService categoryService;
	@Autowired SpecService specService;
	
	@SuppressWarnings("resource")
	@RequestMapping("/query")
	public String query(HttpServletRequest request, Model m, String kw, String fq) throws SolrServerException, IOException {
		HttpSolrClient client = new HttpSolrClient("http://114.215.223.6:8983/solr/commodity/");
		SolrQuery query = new SolrQuery(StringUtils.isBlank(kw)?"":"*"+kw+"*");
		
		m.addAttribute("kw", kw);
		
		long startTime = System.currentTimeMillis();
		/** 拼装查询参数 */
		query.setFacet(true);
		query.addFacetField("spec"); // 设置需要facet的字段
		query.setFacetLimit(10); // 限制facet返回的数量
		
		// group 根据分类来判断是否需要聚合，一般电子产品不需要聚合，服饰类需要聚合
		/*query.add("group", "true");
		query.add("group.field","productId"); 
		query.add("group.main","true");*/
		
		// 过滤条件FilterQuery
		Map<String, String> fqmap = new HashMap<>();
		if(StringUtils.isNotBlank(fq)) {
			String[] fqArr = getFilterQueryArray(fq);
			m.addAttribute("fqArr", fqArr);
			if(fqArr != null && fqArr.length > 0) {
				fq = "";
				for(String s : fqArr) {
					query.addFilterQuery("spec:"+s);
					String[] fqKV = s.split("@");
					fqmap.put(fqKV[0], fqKV[1]);
					fq += s+","; // 重新组装FQ
				}
				m.addAttribute("fq", fq = fq.substring(0, fq.length()-1));
			}
		}
		long searchParamEndTime = System.currentTimeMillis();
		m.addAttribute("searchParam", searchParamEndTime-startTime);
		
		/** 处理搜索结果 */
        QueryResponse response = client.query(query);
        long searchEndTime = System.currentTimeMillis();
        m.addAttribute("search", searchEndTime-searchParamEndTime);
        
        Map<String, List<SpecVo>> facets = solrService.getFacets(response);
        m.addAttribute("facets", facets);
        String[] ids = {};
        ids = facets.keySet().toArray(ids);
        Map<String, Spec> spec = specService.getSpecMap(ids);
        m.addAttribute("spec", spec);
        // 去掉已经选择过的
        Iterator<Map.Entry<String, List<SpecVo>>> it = facets.entrySet().iterator();  
        while(it.hasNext()){
            Map.Entry<String, List<SpecVo>> entry = it.next();  
            String key = entry.getKey();
            if(fqmap.containsKey(key)){
                it.remove();
            }
        }
        long resultDataEndTime = System.currentTimeMillis();
        m.addAttribute("resultData", resultDataEndTime-searchEndTime);
        
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
        long commodityDataEndTime = System.currentTimeMillis();
        m.addAttribute("commodityData", commodityDataEndTime-resultDataEndTime);
        
        /** 分类 */
        m.addAttribute("category", categoryService.finAll());
        long categoryDataEndTime = System.currentTimeMillis();
        m.addAttribute("categoryData", categoryDataEndTime-commodityDataEndTime);
        
        return "search/commodity-list";
	}

	private String[] getFilterQueryArray(String filterQuery) {
		List<String> list = new ArrayList<>(); 
		
		if(StringUtils.isBlank(filterQuery)) return list.toArray(new String[list.size()]);
		filterQuery = filterQuery.replace(",+", ",");
		
		String[] array = filterQuery.split(",");
		for(int i=0;i<array.length;i++){
			System.out.println(">>"+array[i]);
			if(StringUtils.isBlank(array[i])) continue;
		    for(int j=i+1;j<array.length;j++){
		        if(array[i].equals(array[j])){  
		            j = ++i;  
		        }
		    }
		    list.add(array[i]);
		}
		return list.toArray(new String[list.size()]);  
	}
	
}
