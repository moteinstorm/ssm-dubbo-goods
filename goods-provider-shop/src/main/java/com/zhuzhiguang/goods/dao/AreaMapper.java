package com.zhuzhiguang.goods.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

import com.zhuzhiguang.goods.entity.Area;

/**
 * 
 * @author zhuzg
 *
 */
@Mapper
public interface AreaMapper {

	@Select("select * from zk_area where parentid=#{value}")
	@ResultType(Area.class)
	List<Area> getAreaList(Integer parentId);

}
