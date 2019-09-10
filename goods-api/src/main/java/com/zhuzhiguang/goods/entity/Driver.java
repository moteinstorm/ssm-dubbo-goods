package com.zhuzhiguang.goods.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * @author zhuzg
 *
 */
public class Driver  implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4278278697970214997L;
	private Integer id;
	private String nums;
	private String name;
	private String sex;
	
	private Integer shengid;
	private Integer shiid;
	private Integer quid;
	
	
	private String shengName;
	private String shiName;
	private String quName;
	
	public String getShengName() {
		return shengName;
	}
	public void setShengName(String shengName) {
		this.shengName = shengName;
	}
	public String getShiName() {
		return shiName;
	}
	public void setShiName(String shiName) {
		this.shiName = shiName;
	}
	public String getQuName() {
		return quName;
	}
	public void setQuName(String quName) {
		this.quName = quName;
	}
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date pushDate;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNums() {
		return nums;
	}
	public void setNums(String nums) {
		this.nums = nums;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getShengid() {
		return shengid;
	}
	public void setShengid(Integer shengid) {
		this.shengid = shengid;
	}
	public Integer getShiid() {
		return shiid;
	}
	public void setShiid(Integer shiid) {
		this.shiid = shiid;
	}
	public Integer getQuid() {
		return quid;
	}
	public void setQuid(Integer quid) {
		this.quid = quid;
	}
	public Date getPushDate() {
		return pushDate;
	}
	public void setPushDate(Date pushDate) {
		this.pushDate = pushDate;
	}
	@Override
	public String toString() {
		return "Driver [id=" + id + ", nums=" + nums + ", name=" + name + ", sex=" + sex + ", shengid=" + shengid
				+ ", shiid=" + shiid + ", quid=" + quid + ", shengName=" + shengName + ", shiName=" + shiName
				+ ", quName=" + quName + ", pushDate=" + pushDate + "]";
	}
	
	
	

}
