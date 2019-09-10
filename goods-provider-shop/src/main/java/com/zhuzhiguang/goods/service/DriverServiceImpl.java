package com.zhuzhiguang.goods.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.dubbo.config.annotation.Service;
import com.zhuzhiguang.goods.dao.DriverMapper;
import com.zhuzhiguang.goods.entity.Driver;

/**
 * 
 * @author zhuzg
 *
 */
@Service(interfaceClass=DriverService.class)
@Transactional
public class DriverServiceImpl implements DriverService {

	@Autowired
	DriverMapper driverMapper; 
	
	@Override
	public Driver findByid(Integer id) {
		// TODO Auto-generated method stub
		return driverMapper.getById(id);
	}
	
}
