package com.selforder.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.selforder.Model.CashRegisterModel;
import com.selforder.Model.TableModel;
import com.selforder.Model.TurnoverModel;

@Repository
public interface CashRegisterDao {
	/**
	 * ��ʼ����������
	 * @return
	 */
	List<CashRegisterModel> CashRegister();

	/**
	 * �õ�ÿһ����˵ľ�����Ϣ
	 * @return
	 */
	List<TableModel> getTableData(String tablenumber);

	/**
	 * ���Ӫҵ��
	 */

	void CashPay(TurnoverModel model);

	/**
	 * �õ�֧��״̬
	 * @param tablenumber
	 * @return
	 */
	String getPaymentstatus(String tablenumber);

	/**
	 * �õ��˵�״̬
	 * @param tablenumber
	 * @return
	 */
	List<String> getDishstatus(String tablenumber);

	/**
	 * ����table���е�����
	 * @param tablenumber
	 */
	void RestartTable(String tablenumber);

	/**
	 * ����tabledish���е�����
	 * @param tablenumber
	 */
	void tabledish(String tablenumber);

	/**
	 * �޸�֧��״̬
	 */
	int changePaymentstatus(TableModel model);

	/**
	 * �޸�����
	 * @param tablenumber
	 * @param Newtablenumber
	 */
	void changeTableNumber(@Param("tablenumber")String tablenumber,@Param("newtablenumber")String newtablenumber);

	void changeTableNumber1(@Param("tablenumber")String tablenumber, @Param("newtablenumber")String newtablenumber);

	/**
	 * �õ��ܶ�
	 * @param tablenumber
	 * @return
	 */
	String getTotal(String tablenumber);

	/**
	 * ��ѵ���������Ϣ
	 * @return
	 */
	List<String> needCall(String callserving);

}
