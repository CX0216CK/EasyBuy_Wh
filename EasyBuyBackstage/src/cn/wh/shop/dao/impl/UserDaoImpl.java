package cn.wh.shop.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cn.wh.shop.dao.IUserDao;
import cn.wh.shop.db.DBAccess;
import cn.wh.shop.entity.UserInfo;

/**
 * @2018��5��16��
 * @�� ��
 * @Administrator
 */
public class UserDaoImpl implements IUserDao {
	/*
	 * @Test public void show() throws Exception { UserInfo info = new
	 * UserInfo(); info.setUname("admin"); info.setUpwd("123"); boolean
	 * userlogin1 = userlogin(info); System.out.println(userlogin1); }
	 */

	@Override
	public boolean userlogin(UserInfo info) throws Exception {
		boolean flag = false;
		List<UserInfo> list = new ArrayList<UserInfo>();
		// ����һ��ʵ����Ķ���
		UserInfo message = new UserInfo();
		message.setUname(info.getUname());
		message.setUpwd(info.getUpwd());
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlsession = dbAccess.getsqlsession();
		// ͨ��sqlsessionִ��SQL���
		list = sqlsession.selectList("Message.userlogin", message);
		System.out.println(list.size());
		if (list.size() > 0) {
			flag = true;
		}
		if (sqlsession != null) {
			sqlsession.close();
		}

		return flag;
	}

	@Override
	public boolean userphonelogin(UserInfo info) throws Exception {
		boolean flag = false;
		List<UserInfo> list = new ArrayList<UserInfo>();
		// ����һ��ʵ����Ķ���
		UserInfo message = new UserInfo();
		message.setUphone(info.getUphone());
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlsession = dbAccess.getsqlsession();
		// ͨ��sqlsessionִ��SQL���
		list = sqlsession.selectList("Message.userphonelogin", message);
		System.out.println(list.size());
		if (list.size() > 0) {
			flag = true;
		}
		if (sqlsession != null) {
			sqlsession.close();
		}

		return flag;
	}
}
