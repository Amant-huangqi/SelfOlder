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
	 * 初始化收银界面
	 * @return
	 */
	List<CashRegisterModel> CashRegister();

	/**
	 * 得到每一桌点菜的具体信息
	 * @return
	 */
	List<TableModel> getTableData(String tablenumber);

	/**
	 * 添加营业额
	 */

	void CashPay(TurnoverModel model);

	/**
	 * 得到支付状态
	 * @param tablenumber
	 * @return
	 */
	String getPaymentstatus(String tablenumber);

	/**
	 * 得到菜的状态
	 * @param tablenumber
	 * @return
	 */
	List<String> getDishstatus(String tablenumber);

	/**
	 * 重置table表中的数据
	 * @param tablenumber
	 */
	void RestartTable(String tablenumber);

	/**
	 * 重置tabledish表中的数据
	 * @param tablenumber
	 */
	void tabledish(String tablenumber);

	/**
	 * 修改支付状态
	 */
	int changePaymentstatus(TableModel model);

	/**
	 * 修改桌号
	 * @param tablenumber
	 * @param Newtablenumber
	 */
	void changeTableNumber(@Param("tablenumber")String tablenumber,@Param("newtablenumber")String newtablenumber);

	void changeTableNumber1(@Param("tablenumber")String tablenumber, @Param("newtablenumber")String newtablenumber);

	/**
	 * 得到总额
	 * @param tablenumber
	 * @return
	 */
	String getTotal(String tablenumber);

	/**
	 * 轮训检查需求信息
	 * @return
	 */
	List<String> needCall(String callserving);

}
