package com.selforder.Dao;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.selforder.Model.CashRegisterModel;
import com.selforder.Model.MenuModel;
import com.selforder.Model.Users;

@Repository
public interface ManagementDao {

	/**
	 * 得到总菜单
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	List<MenuModel> getMenu();

	/**
	 * 得到今日菜单
	 * @return
	 */
	List<MenuModel> getgetTodayMenu();

	/**
	 * 更新今日菜单
	 * @param sort
	 * @param dishes
	 * @param price
	 * @param image
	 * @param characteristic
	 */
	void UpdataManagement(@Param("sort")String sort, @Param("dishes")String dishes, @Param("price")String price,@Param("characteristic")String characteristic);

	/**
	 * 报表所需的菜评价信息
	 */
	List<MenuModel> getDishesAssess(String sort);

	/**
	 * 根据月份得到营业额
	 * @param request
	 * @return
	 * @throws ParseException
	 */
	List<Integer> getTurnover(@Param("startfiletime")Date startfiletime, @Param("endfiletime")Date endfiletime);

	/**
	 * 得到今天的营业额
	 * @return
	 */
	List<Integer> getTodayTurnover(@Param("startfiletime")Date startfiletime, @Param("endfiletime")Date endfiletime);

	/**
	 * 删除原有菜单
	 */
	void delectAllManagement();

	/**
	 * 添加菜单
	 * @param json1
	 */
	void addMenu(@Param("sort")String sort, @Param("dishes")String dishes, @Param("price")String price,@Param("image") String image,
			@Param("characteristic")String characteristic);

	/**
	 * 删除菜单
	 * @param id
	 */
	void delectManagement(int id);

	/**
	 * 修改菜单
	 * 
	 * @param id
	 */
	void updataMenu(MenuModel model);

	/**
	 * 得到图片URL
	 * 
	 * @param id
	 * @return 
	 */
	String getImgView(int id);

	/**
	 *  提交图片
	 * @param ImgURL
	 */
	void SubmitImg(MenuModel model);

	/**
	 * 得到作为信息
	 * @return
	 */
	List<CashRegisterModel> getTableData();

	/**
	 * 修改菜是否是 推荐信息
	 * @param dishes
	 * @param characteristic
	 */
	void changeCharacteristic(@Param("dishes")String dishes, @Param("characteristic")String characteristic);

	/**
	 * 添加用户信息
	 * @param username
	 * @param password
	 * @param permission
	 * @throws UnsupportedEncodingException
	 */
	void addUser(@Param("username")String username, @Param("password")String password, @Param("permission")String permission);

	/**
	 * 添加用户权限
	 * @param username
	 * @param password
	 * @param permission
	 * @throws UnsupportedEncodingException
	 */
	void addUserPermission(@Param("role_name")String role_name, @Param("permission")String permission);

	/**
	 * 删除用户
	 * @param id
	 */
	void deleteUser(int id);
	/**
	 * 删除用户权限
	 * @param id
	 */
	void deleteUserPermission(int id);

	/**
	 * 更新用户
	 * @param id
	 */
	void UpdataUser(@Param("username")String username, @Param("password")String password, @Param("permission")String permission);
	/**
	 * 更新用户权限
	 * @param id
	 */
	void UpdataUserPermission(@Param("role_name")String role_name, @Param("permission")String permission);

	/**
	 * 初始化用户管理页面
	 * @return
	 */
	List<Users> getUser();

	/**
	 * 得到座位情况
	 * @return 
	 */
	List<String> getTableNumber();

	/**
	 * 菜品添加至今日菜单 状态更改
	 * @param dishes
	 */
	void changeAddToday(@Param("dishes")String dishes,@Param("addToday")String addToday);

	void changeAddTodayInitialization(@Param("addToday")String addToday);

}
