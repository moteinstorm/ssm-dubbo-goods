package com.zhuzhiguang.goods.entity;

import java.io.Serializable;

/**
 * 
 * @author zhuzg
 *
 */
public class Area implements  Serializable  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7445083874966887268L;
	Integer id;
	String name;
	Integer parentid;
	
	
	
	
	@Override
	public String toString() {
		return "Area [id=" + id + ", name=" + name + ", parentid=" + parentid + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	

}
