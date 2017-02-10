package com.selforder.Controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.selforder.Model.AppModel;
import com.selforder.Model.TurnoverModel;
import com.selforder.Service.AppService;

@Controller
public class IndexController {
	
	@Resource
	private AppService service;

	@RequestMapping(value = "index")
	@ResponseBody
	public ModelAndView CashRegister(HttpServletRequest request)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		List<AppModel> list1 = service.sendDataHomeCooking();
		List<AppModel> list2 = service.sendDataColdDish();
		List<AppModel> list3 = service.sendDataPasta();
		List<AppModel> list4 = service.sendDataHot();
		List<AppModel> list5 = service.sendDataGruel();
		List<AppModel> list6 = service.sendData();
		List<AppModel> list7 = service.sendDrink();
		String IP = request.getLocalAddr();
		int port = request.getLocalPort();
		model.addObject("IP", IP);
		model.addObject("port", Integer.toString(port));
		model.addObject("DataHomeCooking", list1);
		model.addObject("DataColdDish", list2);
		model.addObject("DataPasta", list3);
		model.addObject("DataHot", list4);
		model.addObject("DataGruel", list5);
		model.addObject("Data", list6);
		model.addObject("Drink", list7);
		model.setViewName("index");
		return model;
	}
	
	/**
	 * 接收到APP发送来的数据
	 * 
	 * @param json1
	 * @param json2
	 * @param assess
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "sendIndexData")
	public void getData(@RequestParam("json1") String json1,
			@RequestParam("json2") String json2)
			throws UnsupportedEncodingException {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String data1 = sdf.format(date);
		// 每一桌的支付状态
		JSONObject jsonObject = JSONObject.fromObject(json1);
		String tablenumber1 = jsonObject.getString("tablenumber");
		String total = jsonObject.getString("total");
		total = new String(total.getBytes("iso-8859-1"), "UTF-8");
		String invoice = jsonObject.getString("invoice");
		
		service.addData(tablenumber1, "0", total, data1, invoice);

		
		// 每一桌点餐状态
		JSONArray jsonArray = JSONArray.fromObject(json2);
		
		for (int i = 0; i < jsonArray.size(); i++) {
			JSONObject jsonData = null;
			jsonData = (JSONObject) jsonArray.get(i);
			String dishes = jsonData.getString("dishes");
			dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
			String amount = jsonData.getString("amount");
			service.addData1(tablenumber1, dishes, "0", data1, amount,"0");
		}
		
		

	}

}
