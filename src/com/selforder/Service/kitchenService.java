package com.selforder.Service;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.selforder.Dao.kitchenDao;
import com.selforder.Model.KitchenModel;
import com.selforder.Model.TableModel;

@Service
public class kitchenService {
	
	@Resource
	private kitchenDao dao;
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	/**
	 * 初始化厨房一页面
	 * @return
	 * @throws ParseException 
	 *
	 */
	public List<KitchenModel> kitchenOne() throws ParseException {
		// TODO Auto-generated method stub
		List<KitchenModel> KitchenList = new ArrayList<KitchenModel>();
		//得到桌号
		List<String> tablenumber = dao.getTablenumber();
		logger.info("-----tablenumber---"+tablenumber.toString()+"------------------------------------");
		for(int i=0;i<tablenumber.size();i++){
			//根据桌号得到每一桌点菜的数量
			List<TableModel> TableDishes = dao.getTableDishes(tablenumber.get(i));
			//根据桌号得到每一桌完成菜的数量
			List<TableModel> TableDishes1 = dao.carryOutNumber(tablenumber.get(i));
			String tablenumber1 = tablenumber.get(i);
			String orderingNumber = Integer.toString(TableDishes.size());
			String carryOutNumber = Integer.toString(TableDishes.size()-TableDishes1.size());
			logger.info("--------"+tablenumber1+"号桌----点菜的数量-----"+orderingNumber+"----未完成菜的数量------"+carryOutNumber+"-------------------");
			if(!carryOutNumber.equals("0")){
				KitchenModel model = new KitchenModel(tablenumber1,orderingNumber,carryOutNumber);
				//Date date = new Date();
				String date = dao.getTime(tablenumber1);
				logger.info("-----date---"+date+"------------------------------------");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				Date time = sdf.parse(date);            
				//String time = sdf.format(date);
				logger.info("-----time---"+time+"------------------------------------");
				model.setTime(time);
				KitchenList.add(model);
			}
			
		}
		
		return KitchenList;
	}
	
	/**
	 * 根据桌号得到每一桌的具体数据
	 * @param tablenumber
	 * @return
	 */
	public List<TableModel> kitchenOneData(String tablenumber) {
		// TODO Auto-generated method stub
		//根据桌号得到每一桌点菜的数量
		List<TableModel> TableDishes = dao.getTableDishes(tablenumber);
		return TableDishes;
	}

	/**
	 * 得到每一桌的具体数据
	 * @param request
	 * @return
	 */
	public List<List<TableModel>> kitchenaaa() {
		// TODO Auto-generated method stub
		
		//得到桌号
		List<String> tablenumber = dao.getTablenumber();
		List<List<TableModel>> list = new ArrayList<List<TableModel>>();
		for(int i=0;i<tablenumber.size();i++){
			//根据桌号得到每一桌的菜
			List<TableModel> TableDishes = dao.getTableDishes(tablenumber.get(i));
			list.add(TableDishes);
		}
		
		return list;
	}
	
	

	/**
	 * 得到每一种菜的数量
	 * @param request
	 * @return
	 */
	public String getDishesNumber(String dishes) {
		// TODO Auto-generated method stub
		List<String> list = dao.getDishesNumber(dishes);
		String number = Integer.toString(list.size());
		return number;
	}

	/**
	 * 修改某一桌菜做的状态
	 * @param tablenumber
	 * @param dishes
	 * @param dishstatus
	 */
	public void changeDishstatus(String tablenumber, String dishes,
			String dishstatus) {
		// TODO Auto-generated method stub
		dao.changeDishstatus(tablenumber,dishes,dishstatus);
	}

	/**
	 * 初始化厨房二页面
	 * @param request
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public List<TableModel> kitchenTwo() {
		// TODO Auto-generated method stub
		int a = 1;
		List<TableModel> list = new ArrayList<TableModel>();
		//得到今日菜单的所有菜名
		List<String> TodayMenuDishes = dao.getTodayMenuDishes();
		logger.info("-----今日菜单的所有菜名-----"+TodayMenuDishes.toString()+"--------------------------------");
		logger.info("-----TodayMenuDishes 长度-----"+TodayMenuDishes.size()+"--------------------------------");
		for(int i=0;i<TodayMenuDishes.size();i++){
			logger.info("-----菜名-------"+TodayMenuDishes.get(i)+"--------------------------------");
			//根据菜名得到点菜的数量
			List<TableModel> number = dao.getNumber(TodayMenuDishes.get(i));
			String data = Integer.toString(number.size());
			if(!data.equals("0")){
				for(int j=0;j<number.size();j++){
					String Tablenumber = number.get(j).getTablenumber();
					String amount = number.get(j).getAmount();
					String dishstatus = number.get(j).getDishstatus();
					TableModel model = new TableModel();
					model.setId(a);
					model.setDishstatus(dishstatus);
					model.setTablenumber(Tablenumber);
					model.setDishes(TodayMenuDishes.get(i));
					model.setAmount(amount);
					list.add(model);
					a++;
				}
			}
				
		}
		
		return list;
	}

	public String getTime(String tablenumber) {
		// TODO Auto-generated method stub
		return dao.getTime(tablenumber);
	}

	

	

}
