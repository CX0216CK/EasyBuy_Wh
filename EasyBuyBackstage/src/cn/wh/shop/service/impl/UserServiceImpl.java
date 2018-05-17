package cn.wh.shop.service.impl;

import cn.wh.shop.dao.IUserDao;
import cn.wh.shop.dao.impl.UserDaoImpl;
import cn.wh.shop.entity.UserInfo;
import cn.wh.shop.service.IUserInfoservice;

/**
 * @2018��5��16��
 * @�� ��
 * @Administrator
 */
public class UserServiceImpl implements IUserInfoservice {
	// ����dao���ʵ��
	IUserDao user = new UserDaoImpl();

	// �û��������� �û���¼
	@Override
	public boolean userlogin(UserInfo info) throws Exception {
		return user.userlogin(info);
	}

	// �û����ֻ��ź���֤���½
	@Override
	public boolean userphonelogin(UserInfo info) throws Exception {
		// TODO Auto-generated method stub
		return user.userphonelogin(info);
	}

}
