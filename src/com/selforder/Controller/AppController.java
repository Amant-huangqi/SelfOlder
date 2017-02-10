package com.selforder.Controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.selforder.Model.AppModel;
import com.selforder.Model.TableModel;
import com.selforder.Model.TurnoverModel;
import com.selforder.Service.AppService;
import com.selforder.Service.CashRegisterService;

/**
 * Appҳ�潻��
 * 
 * @author Administrator
 * 
 */
@Controller
@RequestMapping(value = "App")
public class AppController {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Resource
	private AppService service;

	@Resource
	private CashRegisterService service1;

	/**
	 * ��App���ͳ�ʼ����������
	 * 
	 * @return
	 */
	@RequestMapping(value = "getData")
	@ResponseBody
	public List<AppModel> sendData() {
		List<AppModel> list = service.sendData();
		return list;
	}
	
	/**
	 * ��App���ͳ�ʼ������������ͨ������
	 * 
	 * @return
	 */
	@RequestMapping(value = "getAllData")
	@ResponseBody
	public List<List<AppModel>> getAllData() {
		List<List<AppModel>> list = new ArrayList<List<AppModel>>();
		List<AppModel> list1 = service.sendDataHomeCooking();
		List<AppModel> list2 = service.sendDataColdDish();
		List<AppModel> list3 = service.sendDataPasta();
		List<AppModel> list4 = service.sendDataHot();
		List<AppModel> list5 = service.sendDataGruel();
		List<AppModel> list6 = service.sendData();
		list.add(list1);
		list.add(list2);
		list.add(list3);
		list.add(list4);
		list.add(list5);
		list.add(list6);
		return list;
	}
	
	
	/**
	 * ��App���ͳ�ʼ�������ؼ۲�����
	 * 
	 * @return
	 */
	@RequestMapping(value = "getDataHomeCooking")
	@ResponseBody
	public List<AppModel> sendDataHomeCooking() {
		List<AppModel> list = service.sendDataHomeCooking();
		return list;
	}
	
	/**
	 * ��App���ͳ�ʼ������������
	 * 
	 * @return
	 */
	@RequestMapping(value = "getDataColdDish")
	@ResponseBody
	public List<AppModel> sendDataColdDish() {
		List<AppModel> list = service.sendDataColdDish();
		return list;
	}
	
	/**
	 * ��App���ͳ�ʼ������ʳ����
	 * 
	 * @return
	 */
	@RequestMapping(value = "getDataPasta")
	@ResponseBody
	public List<AppModel> sendDataPasta() {
		List<AppModel> list = service.sendDataPasta();
		return list;
	}
	
	/**
	 * ��App���ͳ�ʼ�����Ȳ�����
	 * 
	 * @return
	 */
	@RequestMapping(value = "getDataHot")
	@ResponseBody
	public List<AppModel> sendDataHot() {
		List<AppModel> list = service.sendDataHot();
		return list;
	}
	
	/**
	 * ��App���ͳ�ʼ����������
	 * 
	 * @return
	 */
	@RequestMapping(value = "getDataGruel")
	@ResponseBody
	public List<AppModel> sendDataGruel() {
		List<AppModel> list = service.sendDataGruel();
		return list;
	}

	/**
	 * �õ�ÿһ���˵�״̬
	 * 
	 * @param tablenumber
	 * @return
	 */
	@RequestMapping(value = "getDishStatus")
	@ResponseBody
	public List<TableModel> sendDishStatus(
			@RequestParam("tablenumber") String tablenumber) {
		List<TableModel> list = service.sendDishStatus(tablenumber);
		return list;

	}

	/**
	 * ���յ�APP������������
	 * 
	 * @param json1
	 * @param json2
	 * @param assess
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "sendData")
	public void getData(HttpServletRequest req, HttpServletResponse resp)
			throws UnsupportedEncodingException {
		StringBuffer buffer = null;
		try {
			BufferedReader reader = req.getReader();
			  buffer = new StringBuffer();
			  String string=null;
			  while ((string = reader.readLine()) != null) {
			   buffer.append(string);
			  }
			  reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		logger.info("------json1---" + buffer + "----------------------");
		//logger.info("------json2---" + json2 + "----------------------");
		//logger.info("------json3---" + json3 + "----------------------");
		// ÿһ����֧��״̬
		JSONObject jsonObject = JSONObject.fromObject(buffer.toString());
		String tablenumber1 = jsonObject.getString("tablenumber");
		String paymentstatus = jsonObject.getString("paymentstatus");
		String total = jsonObject.getString("total");
		total = new String(total.getBytes("iso-8859-1"), "UTF-8");
		String date1 = jsonObject.getString("date");
		String invoice = jsonObject.getString("invoice");
		logger.info("------tablenumber1һ------" + tablenumber1
				+ "-------------------");
		logger.info("------paymentstatusһ------" + paymentstatus
				+ "-------------------");
		service.addData(tablenumber1, paymentstatus, total, date1, invoice);

		// ���������֧�� ֱ�Ӽ�¼ Ӫҵ��
		if (paymentstatus.equals("1")) {
			Date time = new Date();
			TurnoverModel model = new TurnoverModel(total, time);
			service1.CashPay(model);
		}


		// ����������Ϣ
//		JSONArray jsonObject2 = JSONArray.fromObject(json3);
//		for (int i = 0; i < jsonObject2.size(); i++) {
//			JSONObject jsonData = null;
//			jsonData = (JSONObject) jsonObject2.get(i);
//			logger.info("------dishesһ------" + jsonData.toString()
//					+ "-------------------");
//			String dishes = jsonData.getString("dishes");
//			dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
//			String assess = jsonData.getString("assess");
//			logger.info("------dishesһ------" + dishes + "-------------------");
//			logger.info("------assessһ------" + assess + "-------------------");
//			service.addData2(dishes, assess);
//		}

	}
	
	/**
	 * ���յ�APP������������
	 * 
	 * @param json1
	 * @param json2
	 * @param assess
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "sendData2")
	public void getData1(HttpServletRequest req, HttpServletResponse resp)
			throws UnsupportedEncodingException {
		StringBuffer buffer = null;
		try {
			BufferedReader reader = req.getReader();
			  buffer = new StringBuffer();
			  String string=null;
			  while ((string = reader.readLine()) != null) {
			   buffer.append(string);
			  }
			  reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		// ÿһ�����״̬
		JSONArray jsonArray = JSONArray.fromObject(buffer.toString());
		logger.info("------dateһ------" + jsonArray.toString() + "-------------------");
		for (int i = 0; i < jsonArray.size(); i++) {
			JSONObject jsonData = null;
			jsonData = (JSONObject) jsonArray.get(i);
			String tablenumber2 = jsonData.getString("tablenumber");
			String dishes = jsonData.getString("dishes");
			//dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
			String amount = jsonData.getString("amount");
			//String dishstatus = jsonData.getString("dishstatus");
			String date = jsonData.getString("date");
			String paymentstatus = jsonData.getString("paymentstatus");
			logger.info("------tablenumber2һ------" + tablenumber2
					+ "-------------------");
			logger.info("------dishesһ------" + dishes + "-------------------");
			
			logger.info("------dateһ------" + date + "-------------------");
			service.addData1(tablenumber2, dishes, "0", date, amount,paymentstatus);
		}
	}
	
	/**
	 * ���յ�APP����������������
	 * 
	 * @param json1
	 * @param json2
	 * @param assess
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "sendData3")
	public void getData2(HttpServletRequest req, HttpServletResponse resp)
			throws UnsupportedEncodingException {

		StringBuffer buffer = null;
		try {
			BufferedReader reader = req.getReader();
			  buffer = new StringBuffer();
			  String string=null;
			  while ((string = reader.readLine()) != null) {
			   buffer.append(string);
			  }
			  reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		logger.info("------json3һ------ ����������Ϣ-------------------");
		// ����������Ϣ
		JSONArray jsonObject2 = JSONArray.fromObject(buffer.toString());
		for (int i = 0; i < jsonObject2.size(); i++) {
			JSONObject jsonData = null;
			jsonData = (JSONObject) jsonObject2.get(i);
			logger.info("------dishesһ------" + jsonData.toString()
					+ "-------------------");
			String dishes = jsonData.getString("dishes");
			dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
			String assess = jsonData.getString("assess");
			logger.info("------dishesһ------" + dishes + "-------------------");
			logger.info("------assessһ------" + assess + "-------------------");
			service.addData2(dishes, assess);
		}

	}

	/**
	 * ��֤�����Ƿ�����ʹ��
	 * 
	 * @param tablenumber
	 * @return
	 */
	@RequestMapping(value = "getVerification")
	@ResponseBody
	public String getVerification(
			@RequestParam("tablenumber") String tablenumber) {
		List<TableModel> list = service.sendDishStatus(tablenumber);
		if (list.get(0).getDishes() == null) {
			return "0";
		} else {
			return "1";
		}

	}

	/**
	 * �õ�����ʹ�õĲ�����
	 * 
	 * @return
	 */
	@RequestMapping(value = "getTablenumber")
	@ResponseBody
	public List<String> getTablenumber() {
		List<String> list = service.getTablenumber();
		return list;
	}

	/**
	 * �ͻ���Ҫ��;���Ӳ�Ʒ
	 * 
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "addDishes")
	public void addDishes(@RequestParam("json") String json,@RequestParam("paymentstatus")String paymentstatus) throws UnsupportedEncodingException {
		String tablenumber = null;
		JSONArray jsonArray = JSONArray.fromObject(json);
		for (int i = 0; i < jsonArray.size(); i++) {
			JSONObject jsonData = null;
			jsonData = (JSONObject) jsonArray.get(i);
			tablenumber = jsonData.getString("tablenumber");
			String dishes = jsonData.getString("dishes");
			dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
			String amount = jsonData.getString("amount");
			String date = jsonData.getString("date");
			
			service.addDishes(tablenumber, dishes, date, amount);
		}
		
		service.addDishesChangePaymentstatus(tablenumber,paymentstatus);
	}
	
	/**
	 * ��ѵ���������Ϣ
	 * @return
	 */
	@RequestMapping(value="needAppCall")
	public void needAppCall(@RequestParam("tablenumber") String tablenumber,@RequestParam("tablenumbercall")String tablenumbercall){
		
		service.needAppCall(tablenumber,tablenumbercall);
		
	}
	
	

}
