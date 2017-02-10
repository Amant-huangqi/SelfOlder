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
		 * 第一步：收集用户身份和证明
		 */
		System.out.println("第一步：收集用户身份和证明");
		token = new UsernamePasswordToken(userName, password);// 创建用户名/密码身份验证Token（即用户身份/凭证）
		token.setRememberMe(true);
		System.out.println("第一步：收集用户身份和证明结束");
		/**
		 * 第二步：提交身份和证明
		 */
		System.out.println("第二步：提交身份和证明");
		Subject subject = SecurityUtils.getSubject(); // 得到Subject
		System.out.println("第二步：提交身份和证明2222");

		try {
			subject.login(token);// 进行身份验证
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("1111111111");
			request.getRequestDispatcher("error2.html").forward(request,
					response);
		}
		if (subject.isAuthenticated()&&mark!=null) {
			switch (mark) {
			case "1":
				// 进行权限验证
				if (subject.hasRole("收银")) {
					request.getRequestDispatcher(
							"CashRegister.html?username=" + userName).forward(
							request, response);
				} else {
					request.getRequestDispatcher("error.html").forward(request,
							response);
				}
				break;
			case "2":
				// 进行权限验证
				if (subject.hasRole("厨房")) {
					request.getRequestDispatcher(
							"kitchenOne.html?username=" + userName).forward(
							request, response);
				} else {
					request.getRequestDispatcher("error.html").forward(request,
							response);
				}
				break;
			case "3":
				// 进行权限验证
				if (subject.hasRole("后台")) {
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
	 * 添加用户信息
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
	 * 删除用户操作
	 * 
	 * @param id
	 */
	public void deleteUser(@RequestParam("id") String id) {

		service.deleteUser(Integer.parseInt(id));
	}

	/**
	 * 修改用户操作
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
			permission = "收银";
		}
		if(permission.equals("2")){
			permission = "厨房";
		}
		if(permission.equals("3")){
			permission = "后台";
		}
		service.UpdataUser(Integer.parseInt(id), username, password, permission);
	}

	/**
	 * 初始化用户管理页面
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
