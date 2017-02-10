package com.selforder.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.selforder.Model.AppModel;
import com.selforder.Model.TableModel;

@Repository
public interface AppDao {

	/**
	 * 得到普通菜的数据
	 * @return
	 */
	List<AppModel> sendData1();

	/**
	 * 得到特色菜的数据
	 * @return
	 */
	List<AppModel> sendData2();

	
	/**
	 * 实时得到每一桌菜的状态
	 * @param tablenumber
	 * @return
	 */
	List<TableModel> sendDishStatus(String tablenumber);

	/**
	 * 添加table表数据
	 * @param tablenumber1
	 * @param paymentstatus
	 * @param total 
	 */
	void addData(@Param("tablenumber1")String tablenumber1, @Param("paymentstatus")String paymentstatus,@Param("total") String total,@Param("date")String date,@Param("invoice")String invoice);

	/**
	 * 添加每一桌菜的数据
	 * @param tablenumber2
	 * @param dishes
	 * @param dishstatus
	 * @param date
	 * @param paymentstatus 
	 */
	void addData1( @Param("tablenumber2")String tablenumber2, @Param("dishes")String dishes, @Param("dishstatus") String dishstatus,
			 @Param("date")String date,@Param("amount")String amount, @Param("paymentstatus")String paymentstatus);

	/**
	 * 添加评价信息
	 * @param assess
	 * @param assess2 
	 */
	void addData2(@Param("dishes")String dishes, @Param("assess")int assess, @Param("assessfrequency")int assessfrequency);

	/**
	 * 得到正在使用的餐桌号
	 * @return
	 */
	List<String> getTablenumber();

	/**
	 * 判断这个菜是不是已经存在
	 * @param tablenumber
	 * @param dishes
	 * @return
	 */
	String getDishesAmount(@Param("tablenumber")String tablenumber, @Param("dishes")String dishes);

	/**
	 * 判断这个菜是不是已经存在
	 * 菜品不存在 新添加
	 * @param tablenumber
	 * @param dishes
	 * @param amount
	 * @param date
	 */
	void addDishes(@Param("tablenumber")String tablenumber, @Param("dishes")String dishes, @Param("amount")String amount, @Param("date")String date);

	/**
	 * 判断这个菜是不是已经存在
	 * 菜品存在 更新数量
	 * @param tablenumber
	 * @param dishes
	 * @param string
	 */
	void updataAmount(@Param("tablenumber")String tablenumber, @Param("dishes")String dishes, @Param("amount")String amount);

	/**
	 * 添加菜品时修改支付状态
	 * @param tablenumber
	 * @param paymentstatus
	 */
	void addDishesChangePaymentstatus(@Param("tablenumber")String tablenumber, @Param("paymentstatus")String paymentstatus);

	/**
	 * 向App发送初始化所需家常菜数据
	 * 
	 * @return
	 */
	List<AppModel> sendDataHomeCooking();

	/**
	 * 向App发送初始化所凉菜数据
	 * 
	 * @return
	 */
	List<AppModel> sendDataColdDish();

	/**
	 * 向App发送初始化所面食数据
	 * 
	 * @return
	 */
	List<AppModel> sendDataPasta();

	/**
	 * 向App发送初始化所热菜数据
	 * 
	 * @return
	 */
	List<AppModel> sendDataHot();

	/**
	 * 向App发送初始化所粥数据
	 * 
	 * @return
	 */
	List<AppModel> sendDataGruel();

	/**
	 * 轮训检查需求信息
	 * @return
	 */
	void needAppCall(@Param("tablenumber")String tablenumber,@Param("callserving") String callserving);

	List<AppModel> sendDrink();

}
