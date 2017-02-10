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
	 * �õ��ܲ˵�
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
	 * �õ����ղ˵�
	 * 
	 * @return
	 */
	public List<MenuModel> getgetTodayMenu() {
		// TODO Auto-generated method stub
		
		return dao.getgetTodayMenu();
	}
	
	/**
	 * �õ����ղ˵�
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
	 * ���½��ղ˵�
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
	 * ��������Ĳ�������Ϣ
	 */
	public List<MenuModel> getDishesAssess(String sort) {
		// TODO Auto-generated method stub
		return dao.getDishesAssess(sort);
	}

	/**
	 * �����·ݵõ�Ӫҵ��
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
	 * ������ �� ��ȡ��Ӧ���·� ����
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
	 * �õ������Ӫҵ��
	 * @return
	 * @throws ParseException 
	 */
	public String getTodayTurnover() throws ParseException {
		// TODO Auto-generated method stub
		Calendar c = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00")); // ��ȡ������ʱ��
		int year = c.get(Calendar.YEAR); // ��ȡ��
		int month = c.get(Calendar.MONTH) + 1; // ��ȡ�·ݣ�0��ʾ1�·�
		int day = c.get(Calendar.DATE); // ��ȡ��ǰ����
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
	 * ɾ��ԭ�в˵�
	 */
	public void delectAllManagement() {
		// TODO Auto-generated method stub
		dao.delectAllManagement();
	}

	/**
	 * ��Ӳ˵�
	 * @param json1
	 */
	public void addMenu(String sort, String dishes, String price, String image,
			String characteristic) {
		// TODO Auto-generated method stub
		dao.addMenu(sort, dishes, price, image,characteristic);
	}

	/**
	 * ɾ���˵�
	 * @param id
	 */
	public void delectManagement(int id) {
		// TODO Auto-generated method stub
		dao.delectManagement(id);
	}

	/**
	 * �޸Ĳ˵�
	 * 
	 * @param id
	 */
	public void updataMenu(MenuModel model) {
		// TODO Auto-generated method stub
		dao.updataMenu(model);
	}

	/**
	 * �õ�ͼƬURL
	 * 
	 * @param id
	 * @return 
	 */
	public String getImgView(int id) {
		// TODO Auto-generated method stub
		return dao.getImgView(id);
	}

	/**
	 *  �ύͼƬ
	 * @param ImgURL
	 */
	
	public void SubmitImg(MenuModel model) {
		// TODO Auto-generated method stub
		dao.SubmitImg(model);
	}

	/**
	 * �õ���Ϊ��Ϣ
	 * @return
	 */
	public List<CashRegisterModel> getTableData() {
		// TODO Auto-generated method stub
		return dao.getTableData();
	}

	/**
	 * �޸Ĳ��Ƿ��� �Ƽ���Ϣ
	 * @param dishes
	 * @param characteristic
	 */
	public void changeCharacteristic(String dishes, String characteristic) {
		// TODO Auto-generated method stub
		dao.changeCharacteristic(dishes,characteristic);
	}

	/**
	 * ����û���Ϣ
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
	 * ����û�Ȩ��
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
	 * ɾ���û�
	 * @param id
	 */
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		dao.deleteUser(id);
		dao.deleteUserPermission(id);
	}

	/**
	 * �����û�
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
	 * ��ʼ���û�����ҳ��
	 * @return
	 */
	public List<Users> getUser() {
		// TODO Auto-generated method stub
		return dao.getUser();
	}

	/**
	 * �õ���λ���
	 * @return 
	 */
	public List<String> getTableNumber() {
		// TODO Auto-generated method stub
		List<String> list = dao.getTableNumber();
		return list;
	}

	/**
	 * ��Ʒ��������ղ˵� ״̬����
	 * 
	 * @return ��������
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
