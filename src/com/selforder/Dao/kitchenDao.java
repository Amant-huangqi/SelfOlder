package com.selforder.Dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.selforder.Model.TableModel;

@Repository
public interface kitchenDao {

	/**
	 * 得到桌号
	 * @return
	 */
	List<String> getTablenumber();

	/**
	 * 根据桌号得到每一桌的菜
	 * @param string
	 * @return
	 */
	List<TableModel> getTableDishes(String tablenumber);

	/**
	 * 得到每一种菜的数量
	 * @param request
	 * @return
	 */
	List<String> getDishesNumber(String dishes);

	/**
	 * 修改某一桌菜做的状态
	 * @param tablenumber
	 * @param dishes
	 * @param dishstatus
	 */
	void changeDishstatus(@Param("tablenumber")String tablenumber, @Param("dishes")String dishes, @Param("dishstatus")String dishstatus);

	/**
	 * 根据桌号得到每一桌完成菜的数量
	 * @param string
	 * @return 
	 */
	List<TableModel> carryOutNumber(String tablenumber);

	/**
	 * 得到今日菜单的所有菜名
	 * @return
	 */
	List<String> getTodayMenuDishes();

	/**
	 * 根据菜名得到点菜的数量
	 * @param string
	 * @return
	 */
	List<TableModel> getNumber(String dishes);

	String getTime(String tablenumber1);

}
