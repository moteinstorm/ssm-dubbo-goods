package com.zhuzhiguang.goods.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

import com.zhuzhiguang.goods.entity.Goods;

@Mapper
public interface GoodsMapper {
	
	int create(Goods goods);
	//插入中间表
	int createGoodsShop(@Param("goodsId") Integer goodsId,@Param("shopIds") Integer[] shopIds);
	
	@Delete("delete from tb_goods where id=#{value}")
	int deleteById(Integer id);
	
	@Delete("delete from tb_goods_shop where goodsId=#{value}")
	int deleteGoodsShop(Integer id);
	
	// 批量删除
	int deleteBatch(Integer[] ids);
	
	// 删除中间表
	int deleteBatchGoodsShop(Integer[] ids);
	
	int update(Goods goods);
	
	
	Goods findById(Integer id);
	
	List<Goods> list();
	
	@Select("select name,id from tb_goods where name = #{value} limit 1 ")
	@ResultType(Goods.class)
	Goods getByName(String name);

	
}
