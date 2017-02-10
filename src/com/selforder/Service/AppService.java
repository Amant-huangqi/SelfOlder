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
	 * 向App发送初始化所需数据
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
	 * 得到每一桌菜的状态
	 * @param tablenumber
	 * @return
	 */
	public List<TableModel> sendDishStatus(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.sendDishStatus(tablenumber);
	}

	/**
	 * 添加table表数据
	 * @param tablenumber1
	 * @param paymentstatus
	 * @param total 
	 */
	public void addData(String tablenumber1, String paymentstatus, String total,String date,String invoice) {
		// TODO Auto-generated method stub
		dao.addData(tablenumber1,paymentstatus,total,date,invoice);
	}

	/**
	 * 添加每一桌的数据
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
	 * 添加评价信息
	 * @param assess
	 * @param assess2 
	 */
	public void addData2(String dishes, String assess) {
		// TODO Auto-generated method stub

		dao.addData2(dishes,Integer.parseInt(assess),1);
	}

	/**
	 * 得到正在使用的餐桌号
	 * @return
	 */
	public List<String> getTablenumber() {
		// TODO Auto-generated method stub
		return dao.getTablenumber();
	}

	/**
	 * 客户需要中途增加菜品
	 * 
	 * @return
	 */
	public void addDishes(String tablenumber, String dishes, String date,
			String amount) {
		// TODO Auto-generated method stub
		//判断这个菜是不是已经存在
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
	 * 添加菜品时修改支付状态
	 * @param tablenumber
	 * @param paymentstatus
	 */
	public void addDishesChangePaymentstatus(String tablenumber,
			String paymentstatus) {
		// TODO Auto-generated method stub
		dao.addDishesChangePaymentstatus(tablenumber,paymentstatus);
	}


	/**
	 * 向App发送初始化所需家常菜数据
	 * 
	 * @return
	 */
	public List<AppModel> sendDataHomeCooking() {
		// TODO Auto-generated method stub
		return dao.sendDataHomeCooking();
	}

	/**
	 * 向App发送初始化所凉菜数据
	 * 
	 * @return
	 */
	public List<AppModel> sendDataColdDish() {
		// TODO Auto-generated method stub
		return dao.sendDataColdDish();
	}

	/**
	 * 向App发送初始化所面食数据
	 * 
	 * @return
	 */
	public List<AppModel> sendDataPasta() {
		// TODO Auto-generated method stub
		return dao.sendDataPasta();
	}

	/**
	 * 向App发送初始化所热菜数据
	 * 
	 * @return
	 */
	public List<AppModel> sendDataHot() {
		// TODO Auto-generated method stub
		return dao.sendDataHot();
	}

	/**
	 * 向App发送初始化所粥数据
	 * 
	 * @return
	 */
	public List<AppModel> sendDataGruel() {
		// TODO Auto-generated method stub
		return dao.sendDataGruel();
	}

	/**
	 * 轮训检查需求信息
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
