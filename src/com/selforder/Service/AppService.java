package com.selforder.Service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.selforder.Dao.AppDao;
import com.selforder.Model.AppModel;
import com.selforder.Model.TableModel;

@Service
public class AppService {
	
	@Resource
	private AppDao dao;
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	/**
	 * ��App���ͳ�ʼ����������
	 *  
	 * @return
	 */
	public List<AppModel> sendData() {
		// TODO Auto-generated method stub
		//List<List<AppModel>> list = new ArrayList<List<AppModel>>();
		//List<AppModel> list1 = dao.sendData1();
		List<AppModel> list2 = dao.sendData2();
		//list.add(list1);
		//list.add(list2);
		return list2;
	}

	/**
	 * �õ�ÿһ���˵�״̬
	 * @param tablenumber
	 * @return
	 */
	public List<TableModel> sendDishStatus(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.sendDishStatus(tablenumber);
	}

	/**
	 * ���table������
	 * @param tablenumber1
	 * @param paymentstatus
	 * @param total 
	 */
	public void addData(String tablenumber1, String paymentstatus, String total,String date,String invoice) {
		// TODO Auto-generated method stub
		dao.addData(tablenumber1,paymentstatus,total,date,invoice);
	}

	/**
	 * ���ÿһ��������
	 * @param tablenumber2
	 * @param dishes
	 * @param dishstatus
	 * @param date
	 * @param paymentstatus 
	 */
	public void addData1(String tablenumber2, String dishes, String dishstatus,
			String date,String amount, String paymentstatus) {
		// TODO Auto-generated method stub
		dao.addData1(tablenumber2,dishes,dishstatus,date,amount,paymentstatus);
	}

	/**
	 * ���������Ϣ
	 * @param assess
	 * @param assess2 
	 */
	public void addData2(String dishes, String assess) {
		// TODO Auto-generated method stub

		dao.addData2(dishes,Integer.parseInt(assess),1);
	}

	/**
	 * �õ�����ʹ�õĲ�����
	 * @return
	 */
	public List<String> getTablenumber() {
		// TODO Auto-generated method stub
		return dao.getTablenumber();
	}

	/**
	 * �ͻ���Ҫ��;���Ӳ�Ʒ
	 * 
	 * @return
	 */
	public void addDishes(String tablenumber, String dishes, String date,
			String amount) {
		// TODO Auto-generated method stub
		//�ж�������ǲ����Ѿ�����
		String amount1 = dao.getDishesAmount(tablenumber,dishes);
		logger.info("--------------amount1------"+amount1+"-------------------------------");
		if(amount1==null){
			dao.addDishes(tablenumber,dishes,amount,date);
		}else{
			
			int number = Integer.parseInt(amount1)+Integer.parseInt(amount);
			logger.info("--------------number------"+number+"-------------------------------");
			dao.updataAmount(tablenumber,dishes,Integer.toString(number));
		}
	}

	/**
	 * ��Ӳ�Ʒʱ�޸�֧��״̬
	 * @param tablenumber
	 * @param paymentstatus
	 */
	public void addDishesChangePaymentstatus(String tablenumber,
			String paymentstatus) {
		// TODO Auto-generated method stub
		dao.addDishesChangePaymentstatus(tablenumber,paymentstatus);
	}


	/**
	 * ��App���ͳ�ʼ������ҳ�������
	 * 
	 * @return
	 */
	public List<AppModel> sendDataHomeCooking() {
		// TODO Auto-generated method stub
		return dao.sendDataHomeCooking();
	}

	/**
	 * ��App���ͳ�ʼ������������
	 * 
	 * @return
	 */
	public List<AppModel> sendDataColdDish() {
		// TODO Auto-generated method stub
		return dao.sendDataColdDish();
	}

	/**
	 * ��App���ͳ�ʼ������ʳ����
	 * 
	 * @return
	 */
	public List<AppModel> sendDataPasta() {
		// TODO Auto-generated method stub
		return dao.sendDataPasta();
	}

	/**
	 * ��App���ͳ�ʼ�����Ȳ�����
	 * 
	 * @return
	 */
	public List<AppModel> sendDataHot() {
		// TODO Auto-generated method stub
		return dao.sendDataHot();
	}

	/**
	 * ��App���ͳ�ʼ����������
	 * 
	 * @return
	 */
	public List<AppModel> sendDataGruel() {
		// TODO Auto-generated method stub
		return dao.sendDataGruel();
	}

	/**
	 * ��ѵ���������Ϣ
	 * @return
	 */
	public void needAppCall(String tablenumber, String tablenumbercall) {
		// TODO Auto-generated method stub
		dao.needAppCall(tablenumber,tablenumbercall);
	}

	public List<AppModel> sendDrink() {
		// TODO Auto-generated method stub
		return dao.sendDrink();
	}

}
