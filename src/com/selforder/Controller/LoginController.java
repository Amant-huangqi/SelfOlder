package com.selforder.Controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.ExpiredCredentialsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.selforder.Model.Users;
import com.selforder.Service.ManagementService;

@Controller
public class LoginController {

	@Resource
	private ManagementService service;

	private UsernamePasswordToken token;

	@RequestMapping(value = "login")
	public String login() {

		return "login";
	}

	@RequestMapping(value = "dologin")
	public String doLogin(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String mark = request.getParameter("mark");
		System.out.println("userName" + userName);
		System.out.println("password" + password);
		System.out.println("mark" + mark);
		
		// Shiro

		/**
		 * ��һ�����ռ��û���ݺ�֤��
		 */
		System.out.println("��һ�����ռ��û���ݺ�֤��");
		token = new UsernamePasswordToken(userName, password);// �����û���/���������֤Token�����û����/ƾ֤��
		token.setRememberMe(true);
		System.out.println("��һ�����ռ��û���ݺ�֤������");
		/**
		 * �ڶ������ύ��ݺ�֤��
		 */
		System.out.println("�ڶ������ύ��ݺ�֤��");
		Subject subject = SecurityUtils.getSubject(); // �õ�Subject
		System.out.println("�ڶ������ύ��ݺ�֤��2222");

		try {
			subject.login(token);// ���������֤
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("1111111111");
			request.getRequestDispatcher("error2.html").forward(request,
					response);
		}
		if (subject.isAuthenticated()&&mark!=null) {
			switch (mark) {
			case "1":
				// ����Ȩ����֤
				if (subject.hasRole("����")) {
					request.getRequestDispatcher(
							"CashRegister.html?username=" + userName).forward(
							request, response);
				} else {
					request.getRequestDispatcher("error.html").forward(request,
							response);
				}
				break;
			case "2":
				// ����Ȩ����֤
				if (subject.hasRole("����")) {
					request.getRequestDispatcher(
							"kitchenOne.html?username=" + userName).forward(
							request, response);
				} else {
					request.getRequestDispatcher("error.html").forward(request,
							response);
				}
				break;
			case "3":
				// ����Ȩ����֤
				if (subject.hasRole("��̨")) {
					request.getRequestDispatcher(
							"TodayMenu.html?username=" + userName).forward(
							request, response);
				} else {
					request.getRequestDispatcher("error.html").forward(request,
							response);
				}
				break;
			default:
				request.getRequestDispatcher("error.html").forward(request,
						response);
				break;
			}
		} else {
			System.out.println("123456789");
			return "error";
		}
		return null;

	}

	@RequestMapping("error")
	public String error() {
		return "error";
	}
	
	@RequestMapping("error2")
	public String error2() {
		return "error2";
	}

	/**
	 * ����û���Ϣ
	 * 
	 * @param username
	 * @param password
	 * @param permission
	 * @throws UnsupportedEncodingException
	 */
	public void addUser(@RequestParam("username") String username,
			@RequestParam("password") String password,
			@RequestParam("permission") String permission)
			throws UnsupportedEncodingException {
		username = new String(username.getBytes("iso-8859-1"), "UTF-8");
		service.addUser(username, password, permission);
		service.addUserPermission(username, permission);
	}

	/**
	 * ɾ���û�����
	 * 
	 * @param id
	 */
	public void deleteUser(@RequestParam("id") String id) {

		service.deleteUser(Integer.parseInt(id));
	}

	/**
	 * �޸��û�����
	 * 
	 * @param id
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value="changeUser")
	public void UpdataUser(HttpServletRequest request)
			throws UnsupportedEncodingException {
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		username = new String(username.getBytes("iso-8859-1"), "UTF-8");
		String password = request.getParameter("password");
		String permission = request.getParameter("permission");
		if(permission.equals("1")){
			permission = "����";
		}
		if(permission.equals("2")){
			permission = "����";
		}
		if(permission.equals("3")){
			permission = "��̨";
		}
		service.UpdataUser(Integer.parseInt(id), username, password, permission);
	}

	/**
	 * ��ʼ���û�����ҳ��
	 * 
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "User")
	public ModelAndView User(HttpServletRequest request)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("username");
		if (username != null) {
			username = new String(username.getBytes("iso-8859-1"), "UTF-8");
			List<Users> list = service.getUser();
			model.addObject("User", list);
			model.addObject("username", username);
			model.setViewName("User");
		} else {
			model.setViewName("error");
		}

		return model;
	}

}
