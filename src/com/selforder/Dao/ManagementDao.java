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
	 * �õ��ܲ˵�
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	List<MenuModel> getMenu();

	/**
	 * �õ����ղ˵�
	 * @return
	 */
	List<MenuModel> getgetTodayMenu();

	/**
	 * ���½��ղ˵�
	 * @param sort
	 * @param dishes
	 * @param price
	 * @param image
	 * @param characteristic
	 */
	void UpdataManagement(@Param("sort")String sort, @Param("dishes")String dishes, @Param("price")String price,@Param("characteristic")String characteristic);

	/**
	 * ��������Ĳ�������Ϣ
	 */
	List<MenuModel> getDishesAssess(String sort);

	/**
	 * �����·ݵõ�Ӫҵ��
	 * @param request
	 * @return
	 * @throws ParseException
	 */
	List<Integer> getTurnover(@Param("startfiletime")Date startfiletime, @Param("endfiletime")Date endfiletime);

	/**
	 * �õ������Ӫҵ��
	 * @return
	 */
	List<Integer> getTodayTurnover(@Param("startfiletime")Date startfiletime, @Param("endfiletime")Date endfiletime);

	/**
	 * ɾ��ԭ�в˵�
	 */
	void delectAllManagement();

	/**
	 * ��Ӳ˵�
	 * @param json1
	 */
	void addMenu(@Param("sort")String sort, @Param("dishes")String dishes, @Param("price")String price,@Param("image") String image,
			@Param("characteristic")String characteristic);

	/**
	 * ɾ���˵�
	 * @param id
	 */
	void delectManagement(int id);

	/**
	 * �޸Ĳ˵�
	 * 
	 * @param id
	 */
	void updataMenu(MenuModel model);

	/**
	 * �õ�ͼƬURL
	 * 
	 * @param id
	 * @return 
	 */
	String getImgView(int id);

	/**
	 *  �ύͼƬ
	 * @param ImgURL
	 */
	void SubmitImg(MenuModel model);

	/**
	 * �õ���Ϊ��Ϣ
	 * @return
	 */
	List<CashRegisterModel> getTableData();

	/**
	 * �޸Ĳ��Ƿ��� �Ƽ���Ϣ
	 * @param dishes
	 * @param characteristic
	 */
	void changeCharacteristic(@Param("dishes")String dishes, @Param("characteristic")String characteristic);

	/**
	 * ����û���Ϣ
	 * @param username
	 * @param password
	 * @param permission
	 * @throws UnsupportedEncodingException
	 */
	void addUser(@Param("username")String username, @Param("password")String password, @Param("permission")String permission);

	/**
	 * ����û�Ȩ��
	 * @param username
	 * @param password
	 * @param permission
	 * @throws UnsupportedEncodingException
	 */
	void addUserPermission(@Param("role_name")String role_name, @Param("permission")String permission);

	/**
	 * ɾ���û�
	 * @param id
	 */
	void deleteUser(int id);
	/**
	 * ɾ���û�Ȩ��
	 * @param id
	 */
	void deleteUserPermission(int id);

	/**
	 * �����û�
	 * @param id
	 */
	void UpdataUser(@Param("username")String username, @Param("password")String password, @Param("permission")String permission);
	/**
	 * �����û�Ȩ��
	 * @param id
	 */
	void UpdataUserPermission(@Param("role_name")String role_name, @Param("permission")String permission);

	/**
	 * ��ʼ���û�����ҳ��
	 * @return
	 */
	List<Users> getUser();

	/**
	 * �õ���λ���
	 * @return 
	 */
	List<String> getTableNumber();

	/**
	 * ��Ʒ��������ղ˵� ״̬����
	 * @param dishes
	 */
	void changeAddToday(@Param("dishes")String dishes,@Param("addToday")String addToday);

	void changeAddTodayInitialization(@Param("addToday")String addToday);

}
