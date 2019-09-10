package com.zhuzhiguang.goods;

import java.io.IOException;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 
 * @author zhuzg
 *
 */
public class BootStart {
	
	
	public static void main(String[] args) throws IOException {
		System.out.println("kaishi");
		//org.apache.ibatis.type.JdbcType.INTEGER
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		/*GoodsService gs = context.getBean(GoodsService.class);
		PageInfo<Goods> pageInfo = gs.list(1, 3);
		System.out.println("pageinfo is " + pageInfo);
		
		Goods goods = new Goods();
		goods.setAddress(AddressEnum.国外);
		goods.setCategory(CategoryEnum.家用);
		goods.setName("skii");
		goods.setCreateDate(new Date(102,3,23));
		gs.create(goods);
		*/
		System.out.println("ok");
		System.in.read();
		
		
		
	}

}
