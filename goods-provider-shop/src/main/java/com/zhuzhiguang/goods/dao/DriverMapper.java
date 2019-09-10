package com.zhuzhiguang.goods.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

import com.zhuzhiguang.goods.entity.Driver;

@Mapper
public interface DriverMapper {

	@Select("SELECT d.* ,sheng.`name` as shengName,shi.`name` as shiName, qu.`name` as quName from zk_driver as d \r\n" + 
			"       LEFT join zk_area  sheng on sheng.id=d.shengid \r\n" + 
			"       LEFT join zk_area  shi on shi.id=d.shiid \r\n" + 
			"       LEFT join zk_area  qu on qu.id=d.quid "
			+ " where d.id = #{value} ")
	@ResultType(Driver.class)
	Driver getById(Integer id);

}
