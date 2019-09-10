package com.zhuzhiguang.goods.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.zhuzhiguang.goods.entity.Area;
import com.zhuzhiguang.goods.entity.Driver;
import com.zhuzhiguang.goods.service.AreaService;
import com.zhuzhiguang.goods.service.DriverService;

@Controller
@RequestMapping("driver")
public class DriverController {
	
	@Reference
	DriverService driverService;
	
	@Reference
	AreaService areaService;

	
	/**
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value="update",method=RequestMethod.GET)
	public String update(HttpServletRequest  request,  Integer id) {
		Driver driver = driverService.findByid(id);
		request.setAttribute("driver", driver);
		return "driver/update";
	}
	
	
	@RequestMapping("arealist")
	@ResponseBody
	public List<Area> getAreaList(Integer parentId){
		
		List<Area> areaList = areaService.getAreaList(parentId);
		return areaList;
		
	}
	
	
}
