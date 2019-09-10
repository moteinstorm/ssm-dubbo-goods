package com.zhuzhiguang.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.dubbo.config.annotation.Service;
import com.zhuzhiguang.goods.dao.AreaMapper;
import com.zhuzhiguang.goods.entity.Area;

/**
 * 
 * @author zhuzg
 *
 */
@Service(interfaceClass=AreaService.class)
public class AreaServiceImpl implements AreaService{
	
	@Autowired
	AreaMapper areaMapper;

	@Override
	public List<Area> getAreaList(Integer parentId) {
		// TODO Auto-generated method stub
		return areaMapper.getAreaList(parentId);
	}
	
}
