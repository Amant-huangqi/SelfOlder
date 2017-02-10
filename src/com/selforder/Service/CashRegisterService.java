package com.selforder.Service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.selforder.Dao.CashRegisterDao;
import com.selforder.Model.CashRegisterModel;
import com.selforder.Model.TableModel;
import com.selforder.Model.TurnoverModel;

@Service
public class CashRegisterService {

	@Resource
	private CashRegisterDao dao;

	/**
	 * 初始化收银界面
	 * 
	 * @return
	 */
	public List<CashRegisterModel> CashRegister() {
		// TODO Auto-generated method stub
		List<CashRegisterModel> tabOne = dao.CashRegister();
		return tabOne;
	}

	/**
	 * 得到每一桌点菜的具体信息
	 * 
	 * @return
	 */
	public List<TableModel> getTableData(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getTableData(tablenumber);
	}

	/**
	 * 添加营业额
	 */

	public void CashPay(TurnoverModel model) {
		// TODO Auto-generated method stub
		dao.CashPay(model);
	}
	
	/**
	 * 修改支付状态
	 */

	public void changePaymentstatus(TableModel model1) {
		// TODO Auto-generated method stub
		dao.changePaymentstatus(model1);
	}

	/**
	 * 得到支付状态
	 * 
	 * @param tablenumber
	 * @return
	 */
	public String getPaymentstatus(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getPaymentstatus(tablenumber);
	}

	/**
	 * 得到菜的状态
	 * 
	 * @param tablenumber
	 * @return
	 */
	public List<String> getDishstatus(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getDishstatus(tablenumber);
	}

	/**
	 * 清除信息 -->翻桌
	 */
	public void Restart(String tablenumber) {
		// TODO Auto-generated method stub
        dao.RestartTable(tablenumber); 
        dao.tabledish(tablenumber); 
	}

	/**
	 * 修改桌号
	 * @param tablenumber
	 * @param Newtablenumber
	 */
	public void changeTableNumber(String tablenumber, String newtablenumber) {
		// TODO Auto-generated method stub
		dao.changeTableNumber(tablenumber,newtablenumber);
		dao.changeTableNumber1(tablenumber,newtablenumber);
	}

	/**
	 * 得到总额
	 * @param tablenumber
	 * @return
	 */
	public String getTotal(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getTotal(tablenumber);
	}

	/**
	 * 轮训检查需求信息
	 * @return
	 */
	public List<String> needCall() {
		// TODO Auto-generated method stub
		return dao.needCall("1");
	}

	

}
