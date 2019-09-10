package com.zhuzhiguang.goods.service;

import java.util.List;

import com.zhuzhiguang.goods.entity.Area;

/**
 * 
 * @author zhuzg
 *
 */
public interface AreaService {
	
	List<Area> getAreaList(Integer parentId);
}
