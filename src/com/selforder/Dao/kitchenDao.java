package com.selforder.Dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.selforder.Model.TableModel;

@Repository
public interface kitchenDao {

	/**
	 * �õ�����
	 * @return
	 */
	List<String> getTablenumber();

	/**
	 * �������ŵõ�ÿһ���Ĳ�
	 * @param string
	 * @return
	 */
	List<TableModel> getTableDishes(String tablenumber);

	/**
	 * �õ�ÿһ�ֲ˵�����
	 * @param request
	 * @return
	 */
	List<String> getDishesNumber(String dishes);

	/**
	 * �޸�ĳһ��������״̬
	 * @param tablenumber
	 * @param dishes
	 * @param dishstatus
	 */
	void changeDishstatus(@Param("tablenumber")String tablenumber, @Param("dishes")String dishes, @Param("dishstatus")String dishstatus);

	/**
	 * �������ŵõ�ÿһ����ɲ˵�����
	 * @param string
	 * @return 
	 */
	List<TableModel> carryOutNumber(String tablenumber);

	/**
	 * �õ����ղ˵������в���
	 * @return
	 */
	List<String> getTodayMenuDishes();

	/**
	 * ���ݲ����õ���˵�����
	 * @param string
	 * @return
	 */
	List<TableModel> getNumber(String dishes);

	String getTime(String tablenumber1);

}
