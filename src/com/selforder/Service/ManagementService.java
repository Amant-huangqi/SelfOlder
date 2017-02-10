package com.selforder.Service;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.selforder.Dao.ManagementDao;
import com.selforder.Model.CashRegisterModel;
import com.selforder.Model.MenuModel;
import com.selforder.Model.TurnoverModel;
import com.selforder.Model.Users;

@Service
public class ManagementService {

	@Resource
	private ManagementDao dao;
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	/**
	 * 得到总菜单
	 * 
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public PageInfo<MenuModel> getMenu(String pageNum, String pageSize) {
		// TODO Auto-generated method stub
		int num = 1;
		int size = 10;
		if (pageNum != null && !"".equals(pageNum)) {
			num = Integer.parseInt(pageNum);
		}
		if (pageSize != null && !"".equals(pageSize)) {
			size = Integer.parseInt(pageSize);
		}

		PageHelper.startPage(num, size);
		List<MenuModel> tabOne = dao.getMenu();
		PageInfo<MenuModel> page = new PageInfo<MenuModel>(tabOne);

		return page;

	}

	/**
	 * 得到今日菜单
	 * 
	 * @return
	 */
	public List<MenuModel> getgetTodayMenu() {
		// TODO Auto-generated method stub
		
		return dao.getgetTodayMenu();
	}
	
	/**
	 * 得到今日菜单
	 * 
	 * @return
	 */
	public PageInfo<MenuModel> getTodayMenu(String pageNum, String pageSize) {
		// TODO Auto-generated method stub
		int num = 1;
		int size = 10;
		if (pageNum != null && !"".equals(pageNum)) {
			num = Integer.parseInt(pageNum);
		}
		if (pageSize != null && !"".equals(pageSize)) {
			size = Integer.parseInt(pageSize);
		}

		PageHelper.startPage(num, size);
		List<MenuModel> tabOne = dao.getgetTodayMenu();
		PageInfo<MenuModel> page = new PageInfo<MenuModel>(tabOne);

		return page;
		
	}

	/**
	 * 更新今日菜单
	 * 
	 * @param sort
	 * @param dishes
	 * @param price
	 * @param image
	 * @param characteristic
	 */
	public void UpdataManagement(String sort, String dishes, String price,String characteristic) {
		// TODO Auto-generated method stub
		dao.UpdataManagement(sort, dishes, price,"0");
	}

	/**
	 * 报表所需的菜评价信息
	 */
	public List<MenuModel> getDishesAssess(String sort) {
		// TODO Auto-generated method stub
		return dao.getDishesAssess(sort);
	}

	/**
	 * 根据月份得到营业额
	 * 
	 * @param request
	 * @return
	 * @throws ParseException
	 */
	public List<String> getTurnover(String month, String year)
			throws ParseException {
		// TODO Auto-generated method stub
		int maxDate = ManagementService.getDaysByYearMonth(year, month);
		String data1 = year+"-"+ month+"-"+ "01 00:00:00";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date startfiletime = sdf.parse(data1);
		Date endfiletime = new Date();
		List<String> list1 = new ArrayList<String>();
		
		for (int i = 1; i <= maxDate; i++) {
			int Turnover = 0;
			String data2 = year+"-" + month+"-" + i + " 23:59:59";
			endfiletime = sdf.parse(data2);
			List<Integer> list = dao.getTurnover(startfiletime, endfiletime);
			for (int j = 0; j < list.size(); j++) {
				Turnover = list.get(j) + Turnover;
			}
			list1.add(Integer.toString(Turnover));
			startfiletime = endfiletime;
		}

		return list1;
	}

	/**
	 * 根据年 月 获取对应的月份 天数
	 * */
	public static int getDaysByYearMonth(String a, String b) {
		int year = Integer.parseInt(a);
		int month = Integer.parseInt(b);
		Calendar ca = Calendar.getInstance();
		ca.set(Calendar.YEAR, year);
		ca.set(Calendar.MONTH, month - 1);
		ca.set(Calendar.DATE, 1);
		ca.roll(Calendar.DATE, -1);
		int maxDate = ca.get(Calendar.DATE);
		return maxDate;
	}

	/**
	 * 得到今天的营业额
	 * @return
	 * @throws ParseException 
	 */
	public String getTodayTurnover() throws ParseException {
		// TODO Auto-generated method stub
		Calendar c = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00")); // 获取东八区时间
		int year = c.get(Calendar.YEAR); // 获取年
		int month = c.get(Calendar.MONTH) + 1; // 获取月份，0表示1月份
		int day = c.get(Calendar.DATE); // 获取当前天数
		logger.info("------day---"+day+"----------------------");
		String month1 = "";
		String day1 = "";
		if(month<10){
			month1 = ("0"+month).toString();
		}else{
			month1=Integer.toString(month);
		}
		if(day<10){
			day1 = ("0"+day).toString();
		}else{
			day1=Integer.toString(day);
		}
		String data1 = year+"-" +month1+"-" + day1+" 00:00:00";
		String data2 = year+"-" + month1+"-" + day1+" 23:59:59";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date startfiletime = sdf.parse(data1);
		Date endfiletime = sdf.parse(data2);
		int Turnover = 0;
		List<Integer> list = dao.getTodayTurnover(startfiletime,endfiletime);
		for (int j = 0; j < list.size(); j++) {
			Turnover = list.get(j) + Turnover;
		}
		String TodayTurnover = Integer.toString(Turnover);
		return TodayTurnover;
	}

	/**
	 * 删除原有菜单
	 */
	public void delectAllManagement() {
		// TODO Auto-generated method stub
		dao.delectAllManagement();
	}

	/**
	 * 添加菜单
	 * @param json1
	 */
	public void addMenu(String sort, String dishes, String price, String image,
			String characteristic) {
		// TODO Auto-generated method stub
		dao.addMenu(sort, dishes, price, image,characteristic);
	}

	/**
	 * 删除菜单
	 * @param id
	 */
	public void delectManagement(int id) {
		// TODO Auto-generated method stub
		dao.delectManagement(id);
	}

	/**
	 * 修改菜单
	 * 
	 * @param id
	 */
	public void updataMenu(MenuModel model) {
		// TODO Auto-generated method stub
		dao.updataMenu(model);
	}

	/**
	 * 得到图片URL
	 * 
	 * @param id
	 * @return 
	 */
	public String getImgView(int id) {
		// TODO Auto-generated method stub
		return dao.getImgView(id);
	}

	/**
	 *  提交图片
	 * @param ImgURL
	 */
	
	public void SubmitImg(MenuModel model) {
		// TODO Auto-generated method stub
		dao.SubmitImg(model);
	}

	/**
	 * 得到作为信息
	 * @return
	 */
	public List<CashRegisterModel> getTableData() {
		// TODO Auto-generated method stub
		return dao.getTableData();
	}

	/**
	 * 修改菜是否是 推荐信息
	 * @param dishes
	 * @param characteristic
	 */
	public void changeCharacteristic(String dishes, String characteristic) {
		// TODO Auto-generated method stub
		dao.changeCharacteristic(dishes,characteristic);
	}

	/**
	 * 添加用户信息
	 * @param username
	 * @param password
	 * @param permission
	 * @throws UnsupportedEncodingException
	 */
	public void addUser(String username, String password, String permission) {
		// TODO Auto-generated method stub
		dao.addUser(username,password,permission);
	}

	/**
	 * 添加用户权限
	 * @param username
	 * @param password
	 * @param permission
	 * @throws UnsupportedEncodingException
	 */
	public void addUserPermission(String username, String permission) {
		// TODO Auto-generated method stub
		dao.addUserPermission(username,permission);
	}

	/**
	 * 删除用户
	 * @param id
	 */
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		dao.deleteUser(id);
		dao.deleteUserPermission(id);
	}

	/**
	 * 更新用户
	 * @param id
	 * @param username
	 * @param password
	 * @param permission
	 */
	public void UpdataUser(int id, String username, String password,
			String permission) {
		// TODO Auto-generated method stub
		dao.UpdataUser(username,password,permission);
		dao.UpdataUserPermission(username,permission);
	}

	/**
	 * 初始化用户管理页面
	 * @return
	 */
	public List<Users> getUser() {
		// TODO Auto-generated method stub
		return dao.getUser();
	}

	/**
	 * 得到座位情况
	 * @return 
	 */
	public List<String> getTableNumber() {
		// TODO Auto-generated method stub
		List<String> list = dao.getTableNumber();
		return list;
	}

	/**
	 * 菜品添加至今日菜单 状态更改
	 * 
	 * @return 所需数据
	 * @throws UnsupportedEncodingException 
	 */
	public void changeAddToday(String dishes,String addToday) {
		// TODO Auto-generated method stub
		dao.changeAddToday(dishes,addToday);
	}

	public void changeAddTodayInitialization(String addToday) {
		// TODO Auto-generated method stub
		dao.changeAddTodayInitialization(addToday);
	}

}
