package com.lw.basic.entity;

import java.util.ArrayList;
import java.util.List;

import com.lw.util.BaseEntity;

//@Entity
public class Product extends BaseEntity{
	
	private String spu;
	private String title;// 标题
	private String subtitle;// 副标题
	
	private String htmlDescription;// 商品描述
	
	private List<Commodity> commodities = new ArrayList<Commodity>();

	public String getSpu() {
		return spu;
	}

	public void setSpu(String spu) {
		this.spu = spu;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getHtmlDescription() {
		return htmlDescription;
	}

	public void setHtmlDescription(String htmlDescription) {
		this.htmlDescription = htmlDescription;
	}

	public List<Commodity> getCommodities() {
		return commodities;
	}

	public void setCommodities(List<Commodity> commodities) {
		this.commodities = commodities;
	}

}
