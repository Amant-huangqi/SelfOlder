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
	 * ��ʼ����������
	 * 
	 * @return
	 */
	public List<CashRegisterModel> CashRegister() {
		// TODO Auto-generated method stub
		List<CashRegisterModel> tabOne = dao.CashRegister();
		return tabOne;
	}

	/**
	 * �õ�ÿһ����˵ľ�����Ϣ
	 * 
	 * @return
	 */
	public List<TableModel> getTableData(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getTableData(tablenumber);
	}

	/**
	 * ���Ӫҵ��
	 */

	public void CashPay(TurnoverModel model) {
		// TODO Auto-generated method stub
		dao.CashPay(model);
	}
	
	/**
	 * �޸�֧��״̬
	 */

	public void changePaymentstatus(TableModel model1) {
		// TODO Auto-generated method stub
		dao.changePaymentstatus(model1);
	}

	/**
	 * �õ�֧��״̬
	 * 
	 * @param tablenumber
	 * @return
	 */
	public String getPaymentstatus(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getPaymentstatus(tablenumber);
	}

	/**
	 * �õ��˵�״̬
	 * 
	 * @param tablenumber
	 * @return
	 */
	public List<String> getDishstatus(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getDishstatus(tablenumber);
	}

	/**
	 * �����Ϣ -->����
	 */
	public void Restart(String tablenumber) {
		// TODO Auto-generated method stub
        dao.RestartTable(tablenumber); 
        dao.tabledish(tablenumber); 
	}

	/**
	 * �޸�����
	 * @param tablenumber
	 * @param Newtablenumber
	 */
	public void changeTableNumber(String tablenumber, String newtablenumber) {
		// TODO Auto-generated method stub
		dao.changeTableNumber(tablenumber,newtablenumber);
		dao.changeTableNumber1(tablenumber,newtablenumber);
	}

	/**
	 * �õ��ܶ�
	 * @param tablenumber
	 * @return
	 */
	public String getTotal(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getTotal(tablenumber);
	}

	/**
	 * ��ѵ���������Ϣ
	 * @return
	 */
	public List<String> needCall() {
		// TODO Auto-generated method stub
		return dao.needCall("1");
	}

	

}
