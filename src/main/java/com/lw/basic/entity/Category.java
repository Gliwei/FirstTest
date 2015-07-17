package com.lw.basic.entity;

import java.util.List;

import com.lw.util.BaseEntity;

public class Category extends BaseEntity{

	private Category parent;
	private String name;
	private List<Category> children;
	public Category getParent() {
		return parent;
	}
	public void setParent(Category parent) {
		this.parent = parent;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Category> getChildren() {
		return children;
	}
	public void setChildren(List<Category> children) {
		this.children = children;
	}
	@Override
	public String toString() {
		return "Category [parent=" + parent + ", name=" + name + ", children size="
				+ children.size() + "]";
	}
}
