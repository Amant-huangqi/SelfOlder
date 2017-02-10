package com.selforder.Controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.selforder.Model.CashRegisterModel;
import com.selforder.Model.TableModel;
import com.selforder.Model.TurnoverModel;
import com.selforder.Service.CashRegisterService;

/**
 * ����ҳ�潻��
 * @author Administrator
 *
 */
@Controller
public class CashRegisterController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	
	@Resource
	private CashRegisterService service; 
	
	/**
	 * ��ʼ����������
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="CashRegister")
	@ResponseBody
	public ModelAndView CashRegister(HttpServletRequest request) throws UnsupportedEncodingException{
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if(username!=null){
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			List<CashRegisterModel> list = service.CashRegister();
			List<String> list1 = service.needCall();
			int number = list1.size();
			model.addObject("number", Integer.toString(number));
			model.addObject("needCall", list1);
			//model.setViewName("needCall");
			model.addObject("CashRegister", list);
			
			model.setViewName("CashRegister");
		}else{
			model.setViewName("error");
		}
		
		
		return model;
	}
	
	/**
	 * ��ʼ���������� TWO
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="CashRegisterTwo")
	@ResponseBody
	public ModelAndView CashRegisterTwo(HttpServletRequest request) throws UnsupportedEncodingException{
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if(username!=null){
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			List<CashRegisterModel> list = service.CashRegister();
			List<String> list1 = service.needCall();
			int number = list1.size();
			model.addObject("number", Integer.toString(number));
			model.addObject("needCall", list1);
			//model.setViewName("needCall");
			model.addObject("CashRegister", list);
			
			model.setViewName("CashRegisterTwo");
		}else{
			model.setViewName("error");
		}
		
		
		return model;
	}
	
	/**
	 * ��ʼ���������� Thr
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="CashRegisterThr")
	@ResponseBody
	public ModelAndView CashRegisterThr(HttpServletRequest request) throws UnsupportedEncodingException{
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if(username!=null){
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			model.addObject("username", username);
			model.setViewName("CashRegisterThr");
		}else{
			model.setViewName("error");
		}
		
		
		return model;
	}
	
	/**
	 * ��ѵ��������
	 * @return
	 */
	@RequestMapping(value="CashRegisterChange")
	@ResponseBody
	public ModelAndView CashRegisterChange(){
		ModelAndView model = new ModelAndView();
		List<CashRegisterModel> list = service.CashRegister();
		model.addObject("CashRegister", list);
		model.setViewName("changeTable");
		return model;
	}
	
	
	
	/**
	 * �õ�ÿһ����˵ľ�����Ϣ
	 * @return
	 */
	@RequestMapping(value="getTableData")
	public ModelAndView getTableData(@RequestParam("tablenumber") String tablenumber){
		ModelAndView model = new ModelAndView();
		String total = service.getTotal(tablenumber);
		List<TableModel> list = service.getTableData(tablenumber);
		for(int i =0;i<list.size();i++){
			list.get(i).setId(i+1);
		}
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String time = sdf.format(date);
		String Tablenumber = list.get(0).getTablenumber();
		model.addObject("TableData", list);
		model.addObject("time", time);
		model.addObject("total", total);
		model.addObject("Tablenumber", Tablenumber);
		model.setViewName("BillData");
		return model;
	}
	
	/**
	 * �õ�ÿһ����˵Ľ�����Ϣ
	 * @return
	 */
	@RequestMapping(value="getPayData")
	public ModelAndView getPayData(@RequestParam("tablenumber") String tablenumber){
		ModelAndView model = new ModelAndView();
		String total = service.getTotal(tablenumber);
		List<TableModel> list = service.getTableData(tablenumber);
		for(int i =0;i<list.size();i++){
			list.get(i).setId(i+1);
		}
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String time = sdf.format(date);
		String Tablenumber = list.get(0).getTablenumber();
		model.addObject("TableData", list);
		model.addObject("time", time);
		model.addObject("total", total);
		model.addObject("Tablenumber", Tablenumber);
		model.setViewName("BillPlease");
		return model;
	}
	
	/**
	 * δ֧���Ĳ�������֧��
	 */
	@RequestMapping(value="CashPay")
	@ResponseBody
	public String CashPay(@RequestParam("total") String total,@RequestParam("tablenumber") String tablenumber){
		
		Date time =new Date();
		TurnoverModel model =new TurnoverModel(total,time);
		//���Ӫҵ��
		service.CashPay(model);
		TableModel model1 = new TableModel();
		model1.setTablenumber(tablenumber);
		model1.setPaymentstatus("2");
		//�޸�֧��״̬
		service.changePaymentstatus(model1);
		return null;
	}
	
	/**
	 * �����Ϣ -->����
	 */
	@RequestMapping(value="Restart")
	@ResponseBody
	public String Restart(@RequestParam("tablenumber") String tablenumber){
		
		String id = "yes";
		
		//�õ�֧��״̬
		String Paymentstatus = service.getPaymentstatus(tablenumber);
		//�õ��˵�״̬
		List<String> dishstatus = service.getDishstatus(tablenumber);
		logger.info("-----Paymentstatus---"+Paymentstatus+"------------------------------------");
		logger.info("-----dishstatus---"+dishstatus.toString()+"------------------------------------");
		for(int i=0;i<dishstatus.size();i++){
			if(!dishstatus.get(i).equals("2")){
				id = "no";
			}
		}
		logger.info("-----id---"+id+"------------------------------------");
		if(!Paymentstatus.equals("0")&&id.equals("yes")){
			service.Restart(tablenumber);
			return "�������";
		}else{
			return "����ʧ��";
		}
		
	}
	
	/**
	 * �޸�����
	 * @param tablenumber
	 * @param Newtablenumber
	 */
	@RequestMapping(value="changeTableNumber")
	public void changeTableNumber(@RequestParam("tablenumber") String tablenumber,@RequestParam("Newtablenumber") String Newtablenumber){
		service.changeTableNumber(tablenumber,Newtablenumber);
	}
	
	/**
	 * ��ѵ���������Ϣ
	 * @return
	 */
	@RequestMapping(value="needCall")
	public ModelAndView needCall(){
		ModelAndView model = new ModelAndView();
		List<String> list = service.needCall();
		int number = list.size();
		model.addObject("number", Integer.toString(number));
		model.addObject("needCall", list);
		model.setViewName("needCall");
		return model;
	}

}
