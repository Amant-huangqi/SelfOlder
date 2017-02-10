package com.selforder.Controller;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.selforder.Model.KitchenModel;
import com.selforder.Model.TableModel;
import com.selforder.Model.Users;
import com.selforder.Service.kitchenService;

/**
 * 厨房页面
 * 
 * @author Administrator
 * 
 */
@Controller
public class kitchenController {

	@Resource
	private kitchenService service;

	/**
	 * 初始化厨房一页面
	 * 
	 * @return
	 * @throws UnsupportedEncodingException
	 * @throws ParseException
	 */
	@RequestMapping(value = "kitchenOne")
	public ModelAndView kitchenOne(HttpServletRequest request)
			throws UnsupportedEncodingException, ParseException {
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if (username != null) {
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			List<KitchenModel> list = service.kitchenOne();
			model.addObject("kitchenOne", list);
			model.addObject("username", username);
			model.setViewName("kitchenOne");
		} else {
			model.setViewName("error");
		}

		return model;
	}

	/**
	 * 初始化厨房一页面 轮训
	 * 
	 * @return
	 * @throws UnsupportedEncodingException
	 * @throws ParseException
	 */
	@RequestMapping(value = "changekitchenOne")
	public ModelAndView changekitchenOne(HttpServletRequest request)
			throws UnsupportedEncodingException, ParseException {
		ModelAndView model = new ModelAndView();

		List<KitchenModel> list = service.kitchenOne();
		model.addObject("kitchenOne", list);
		model.setViewName("changekitchenOneBian");

		return model;
	}

	/**
	 * 根据桌号得到每一桌的具体数据
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "kitchenOneData")
	@ResponseBody
	public ModelAndView kitchenOneData(
			@RequestParam("tablenumber") String tablenumber,
			@RequestParam("carryOutNumber") String carryOutNumber) {
		ModelAndView model = new ModelAndView();

		List<TableModel> list = service.kitchenOneData(tablenumber);
		// Date date = new Date();
		String date = service.getTime(tablenumber);
		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		// String time = sdf.format(date);
		model.addObject("changekitchenOne", list);
		model.addObject("carryOutNumber", carryOutNumber);
		model.addObject("time", date);
		model.addObject("tablenumber", tablenumber);
		model.setViewName("changeKitchenOne");
		return model;
	}

	/**
	 * 初始化厨房二页面
	 * 
	 * @param request
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "kitchenTwo")
	public ModelAndView kitchenTwo(HttpServletRequest request)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if (username != null) {
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			List<TableModel> list = service.kitchenTwo();
			model.addObject("kitchenTwo", list);
			model.addObject("username", username);
			model.setViewName("KitchenTwo");
			//SelfOrder/WebRoot/WEB-INF/jsp/KitchenTwo.jsp
		} else {
			model.setViewName("error");
		}

		return model;
	}

	/**
	 * 初始化厨房二页面 轮训
	 * 
	 * @param request
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "changekitchenTwo")
	public ModelAndView changekitchenTwo(HttpServletRequest request)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		List<TableModel> list = service.kitchenTwo();
		model.addObject("kitchenTwo", list);
		model.setViewName("changeKitchenTwo");
		//SelfOrder/WebRoot/WEB-INF/jsp/changeKitchenTwo.jsp
		return model;
	}

	/**
	 * 修改某一桌菜做的状态
	 * 
	 * @param tablenumber
	 * @param dishes
	 * @param dishstatus
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "changeDishstatus")
	public void changeDishstatus(
			@RequestParam("tablenumber") String tablenumber,
			@RequestParam("dishes") String dishes,
			@RequestParam("dishstatus") String dishstatus)
			throws UnsupportedEncodingException {
		dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
		service.changeDishstatus(tablenumber, dishes, dishstatus);
	}

	// /**
	// * 得到每一种菜的数量
	// * @param request
	// * @return
	// */
	// @RequestMapping(value="kitchenTwo")
	// @ResponseBody
	// public String kitchenTwo(HttpServletRequest request){
	// String dishes = request.getParameter("dishes");
	// String number = service.getDishesNumber(dishes);
	// return number;
	// }

}
