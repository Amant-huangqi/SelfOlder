package com.selforder.Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.selforder.Model.CashRegisterModel;
import com.selforder.Model.MenuModel;
import com.selforder.Service.ManagementService;

/**
 * 管理页面交互
 * 
 * @author Administrator
 * 
 */
@Controller
public class ManagementController {

	@Resource
	private ManagementService service;

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	

	/**
	 * 初始化管理页面  查询保存的今日菜单
	 * 
	 * @return 所需数据
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "TodayMenu")
	public ModelAndView TodayMenu(HttpServletRequest request) throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if(username!=null){
			String IP = request.getLocalAddr();
			int port = request.getLocalPort();
			model.addObject("IP", IP);
			model.addObject("port", Integer.toString(port));
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			PageInfo<MenuModel> page = service.getTodayMenu(null,null);
			model.addObject("pagehelper", page);
			model.setViewName("TodayMenu");
		}else{
			model.setViewName("error");
		}
		
		
		return model;
	}
	
	/**
	 * 今日菜单分页
	 * 
	 * @return 所需数据
	 */
	@RequestMapping(value = "TodayMenuPage")
	public ModelAndView TodayMenuPage(@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize,HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		String IP = request.getLocalAddr();
		int port = request.getLocalPort();
		model.addObject("IP", IP);
		model.addObject("port", Integer.toString(port));
		PageInfo<MenuModel> page = service.getTodayMenu(pageNum, pageSize);
		model.addObject("pagehelper", page);
		model.setViewName("changeTodayMenu");
		return model;
	}

	/**
	 * 初始化管理页面 查询总菜单
	 * 
	 * @return 所需数据
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "Menu")
	public ModelAndView Menu(HttpServletRequest request) throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if(username!=null){
			
			String IP = request.getLocalAddr();
			int port = request.getLocalPort();
			logger.info("----------IP---"+IP+"-------port------"+port+"-----------------");
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			model.addObject("IP", IP);
			model.addObject("port", Integer.toString(port));
			PageInfo<MenuModel> page = service.getMenu(null, null);
			model.addObject("pagehelper", page);
			model.setViewName("Menu");
		}else{
			model.setViewName("error");
		}
		
		
		return model;
	}
	
	/**
	 * 总菜单分页
	 * 
	 * @return 所需数据
	 */
	@RequestMapping(value = "MenuPage")
	public ModelAndView MenuPage(@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize,HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		String IP = request.getLocalAddr();
		int port = request.getLocalPort();
		model.addObject("IP", IP);
		model.addObject("port", Integer.toString(port));
		PageInfo<MenuModel> page = service.getMenu(pageNum, pageSize);
		model.addObject("pagehelper", page);
		model.setViewName("Menuchange");
		return model;
	}
	
	/**
	 * 修改今日菜单页面初始化
	 * 
	 * @return 所需数据
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "changeToday")
	public ModelAndView changeToday(HttpServletRequest request) throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if(username!=null){
			String IP = request.getLocalAddr();
			int port = request.getLocalPort();
			logger.info("----------IP---"+IP+"-------port------"+port+"-----------------");
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			model.addObject("IP", IP);
			model.addObject("port", Integer.toString(port));
			PageInfo<MenuModel> page = service.getMenu(null, null);
			model.addObject("pagehelper", page);
			List<MenuModel> TodayMenu = service.getgetTodayMenu();
			model.addObject("TodayMenu", TodayMenu);
			model.setViewName("ChangeToday");
		}else{
			model.setViewName("error");
		}
		
		
		return model;
	}
	
	
	
	
	
	
	
	
	/**
	 * 营业额报表
	 * 
	 * @return 所需数据
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "Turnover")
	public ModelAndView Turnover(HttpServletRequest request) throws UnsupportedEncodingException{
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		
		if(username!=null){
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			model.setViewName("Turnover");
		}else{
			model.setViewName("error");
		}
		return model;
	}
	
	/**
	 * 评价信息报表
	 * 
	 * @return 所需数据
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "Assess")
	public ModelAndView Assess(HttpServletRequest request) throws UnsupportedEncodingException{
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		
		if(username!=null){
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			model.setViewName("Assess");
		}else{
			model.setViewName("error");
		}
		return model;
	}

	
	
	/**
	 * 修改菜单  总菜单分页
	 * 
	 * @return 所需数据
	 */
	@RequestMapping(value = "changeTodayPage")
	public ModelAndView changeTodayPage(@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize,HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		String IP = request.getLocalAddr();
		int port = request.getLocalPort();
		model.addObject("IP", IP);
		model.addObject("port", Integer.toString(port));
		PageInfo<MenuModel> page = service.getMenu(pageNum, pageSize);
		model.addObject("pagehelper", page);
		model.setViewName("changeMenu");
		return model;
	}

	/**
	 * 保存修改的今日菜单
	 * 
	 * @return 所需数据
	 */
	@RequestMapping(value = "UpdataManagement")
	public void Management1(@RequestParam("json1") String json1)
			throws UnsupportedEncodingException {
		logger.info("------json1---" + json1 + "----------------------");
		// 删除原有菜单
		service.delectAllManagement();

		JSONArray jsonArray = JSONArray.fromObject(json1);
		for (int i = 0; i < jsonArray.size(); i++) {
			JSONObject jsonData = null;
			jsonData = (JSONObject) jsonArray.get(i);

			String sort = jsonData.getString("sort");
			sort = new String(sort.getBytes("iso-8859-1"), "UTF-8");
			String dishes = jsonData.getString("dishes");
			dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
			String price = jsonData.getString("price");
			
			service.UpdataManagement(sort, dishes, price,"0");
		}

	}

	/**
	 * 报表所需的菜评价信息
	 * 
	 * @param sort
	 *            菜的分类
	 * @return 菜名 评价信息
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "getAssess")
	@ResponseBody
	public List<MenuModel> getDishesAssess(@RequestParam("sort") String sort) throws UnsupportedEncodingException {
		
		List<MenuModel> list = service.getDishesAssess(sort = new String(sort.getBytes("iso-8859-1"), "UTF-8"));
		return list;

	}

	/**
	 * 根据月份得到营业额
	 * 
	 * @param request
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value = "getMonthTurnover")
	@ResponseBody
	public List<Integer> getMonthTurnover(HttpServletRequest request)
			throws ParseException {

		// String turnover = request.getParameter("turnover");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
        List<Integer> data = new ArrayList<Integer>();
		List<String> list = service.getTurnover(month, year);
		for(int i=0;i<list.size();i++){
			int a = Integer.parseInt(list.get(i));
			data.add(a);
		}
		return data;

	}

	/**
	 * 得到今天的营业额
	 * 
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value = "getTodayTurnover")
	@ResponseBody
	public String getTodayTurnover() throws ParseException {
		String TodayTurnover = service.getTodayTurnover();
		return TodayTurnover;
	}

	/**
	 * 添加菜单
	 * 
	 * @param json1
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "addMenu")
	public void addMenu(HttpServletRequest request) throws UnsupportedEncodingException {
		
		String sort = request.getParameter("sort");
		sort = new String(sort.getBytes("iso-8859-1"), "UTF-8");
		String dishes = request.getParameter("dishes");
		dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
		String price = request.getParameter("price");
		//String image = request.getParameter("image");
		//String characteristic = request.getParameter("characteristic");

		service.addMenu(sort, dishes, price, "cp1.jpg", "0");
	}

	/**
	 * 删除菜单
	 * 
	 * @param id
	 */
	@RequestMapping(value = "deleteMenu")
	public void deleteMenu(@RequestParam("id") String id) {

		service.delectManagement(Integer.parseInt(id));
	}

	/**
	 * 修改菜单
	 * 
	 * @param id
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "updataMenu")
	public void updataMenu(HttpServletRequest request) throws UnsupportedEncodingException {
		String id = request.getParameter("id");
		String sort = request.getParameter("sort");
		sort = new String(sort.getBytes("iso-8859-1"), "UTF-8");
		String dishes = request.getParameter("dishes");
		dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
		String characteristic = request.getParameter("characteristic");
		MenuModel model = new MenuModel(Integer.parseInt(id), sort, dishes,
				price, image, characteristic);
		service.updataMenu(model);
	}

	/**
	 * 修改菜是否是 推荐信息
	 * 
	 * @param dishes
	 * @param characteristic
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "changecharacteristic")
	public void changeCharacteristic(HttpServletRequest request)
			throws UnsupportedEncodingException {
		String characteristic = request.getParameter("characteristic");
		String dishes = request.getParameter("dishes");
		dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
		service.changeCharacteristic(dishes, characteristic);
	}

	/**
	 * 得到图片URL
	 * 
	 * @param id
	 */
	@RequestMapping(value = "getImgView")
	@ResponseBody
	public String getImgView(@RequestParam("id") String id) {

		String ImgURL = service.getImgView(Integer.parseInt(id));

		return ImgURL;
	}

	/**
	 * 提交图片
	 * 
	 * @param file
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "SubmitImg")
	public void fileupload(
			@RequestParam("uploadPhoto") CommonsMultipartFile file,
			HttpServletRequest req) {
		logger.info("-----file--"+file+"----------------------------");
		// 获取存储路径
		@SuppressWarnings("deprecation")
		String path = req.getRealPath("/image");
		String id = req.getParameter("id");
		String fileName = file.getOriginalFilename();
		logger.info("-----path--"+path+"----id---"+id+"---fileName--"+fileName+"----------------------------");
		try {
			InputStream is = file.getInputStream();
			OutputStream os = new FileOutputStream(new File(path, fileName));
			int len = 0;
			byte[] buffer = new byte[480];
			while ((len = is.read(buffer)) != -1)
				os.write(buffer, 0, len);
			os.close();
			is.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		MenuModel model = new MenuModel();
		model.setId(Integer.parseInt(id));
		model.setImage(fileName);
		service.SubmitImg(model);
	}
	
	/**
	 * 得到座位情况
	 */
	@RequestMapping(value="TableNumber")
	@ResponseBody
	public List<String> TableNumber(){
		List<String> list = service.getTableNumber();
		return list;
	}
	
	/**
	 * 得到餐桌
	 */
	@RequestMapping(value="table")
	public ModelAndView Table(HttpServletRequest request) throws UnsupportedEncodingException{
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if(username!=null){
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			model.setViewName("Table");
		}else{
			model.setViewName("error");
		}
		return model;
	}
	
	/**
	 * 菜品添加至今日菜单 状态更改
	 * 
	 * @return 所需数据
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "changeAddToday")
	public void changeAddToday(HttpServletRequest request) throws UnsupportedEncodingException {
		    String dishes = request.getParameter("dishes");
			dishes = new String(dishes.getBytes("iso-8859-1"), "UTF-8");
			String addToday = request.getParameter("addToday");
			service.changeAddToday(dishes,addToday);
		
	}
	
	/**
	 * 初始化
	 * 
	 * @return 所需数据
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "changeAddTodayInitialization")
	public void changeAddTodayInitialization() {
		logger.info("-----------------初始化运行开始----------------------");
			service.changeAddTodayInitialization("0");
			logger.info("-----------------初始化运行完成----------------------");
		
	}

}
