package com.selforder.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.selforder.Model.AppModel;
import com.selforder.Model.TableModel;

@Repository
public interface AppDao {

	/**
	 * �õ���ͨ�˵�����
	 * @return
	 */
	List<AppModel> sendData1();

	/**
	 * �õ���ɫ�˵�����
	 * @return
	 */
	List<AppModel> sendData2();

	
	/**
	 * ʵʱ�õ�ÿһ���˵�״̬
	 * @param tablenumber
	 * @return
	 */
	List<TableModel> sendDishStatus(String tablenumber);

	/**
	 * ���table������
	 * @param tablenumber1
	 * @param paymentstatus
	 * @param total 
	 */
	void addData(@Param("tablenumber1")String tablenumber1, @Param("paymentstatus")String paymentstatus,@Param("total") String total,@Param("date")String date,@Param("invoice")String invoice);

	/**
	 * ���ÿһ���˵�����
	 * @param tablenumber2
	 * @param dishes
	 * @param dishstatus
	 * @param date
	 * @param paymentstatus 
	 */
	void addData1( @Param("tablenumber2")String tablenumber2, @Param("dishes")String dishes, @Param("dishstatus") String dishstatus,
			 @Param("date")String date,@Param("amount")String amount, @Param("paymentstatus")String paymentstatus);

	/**
	 * ���������Ϣ
	 * @param assess
	 * @param assess2 
	 */
	void addData2(@Param("dishes")String dishes, @Param("assess")int assess, @Param("assessfrequency")int assessfrequency);

	/**
	 * �õ�����ʹ�õĲ�����
	 * @return
	 */
	List<String> getTablenumber();

	/**
	 * �ж�������ǲ����Ѿ�����
	 * @param tablenumber
	 * @param dishes
	 * @return
	 */
	String getDishesAmount(@Param("tablenumber")String tablenumber, @Param("dishes")String dishes);

	/**
	 * �ж�������ǲ����Ѿ�����
	 * ��Ʒ������ �����
	 * @param tablenumber
	 * @param dishes
	 * @param amount
	 * @param date
	 */
	void addDishes(@Param("tablenumber")String tablenumber, @Param("dishes")String dishes, @Param("amount")String amount, @Param("date")String date);

	/**
	 * �ж�������ǲ����Ѿ�����
	 * ��Ʒ���� ��������
	 * @param tablenumber
	 * @param dishes
	 * @param string
	 */
	void updataAmount(@Param("tablenumber")String tablenumber, @Param("dishes")String dishes, @Param("amount")String amount);

	/**
	 * ��Ӳ�Ʒʱ�޸�֧��״̬
	 * @param tablenumber
	 * @param paymentstatus
	 */
	void addDishesChangePaymentstatus(@Param("tablenumber")String tablenumber, @Param("paymentstatus")String paymentstatus);

	/**
	 * ��App���ͳ�ʼ������ҳ�������
	 * 
	 * @return
	 */
	List<AppModel> sendDataHomeCooking();

	/**
	 * ��App���ͳ�ʼ������������
	 * 
	 * @return
	 */
	List<AppModel> sendDataColdDish();

	/**
	 * ��App���ͳ�ʼ������ʳ����
	 * 
	 * @return
	 */
	List<AppModel> sendDataPasta();

	/**
	 * ��App���ͳ�ʼ�����Ȳ�����
	 * 
	 * @return
	 */
	List<AppModel> sendDataHot();

	/**
	 * ��App���ͳ�ʼ����������
	 * 
	 * @return
	 */
	List<AppModel> sendDataGruel();

	/**
	 * ��ѵ���������Ϣ
	 * @return
	 */
	void needAppCall(@Param("tablenumber")String tablenumber,@Param("callserving") String callserving);

	List<AppModel> sendDrink();

}
