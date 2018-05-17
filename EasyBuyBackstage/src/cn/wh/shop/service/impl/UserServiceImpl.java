package cn.wh.shop.service.impl;

import cn.wh.shop.dao.IUserDao;
import cn.wh.shop.dao.impl.UserDaoImpl;
import cn.wh.shop.entity.UserInfo;
import cn.wh.shop.service.IUserInfoservice;

/**
 * @2018年5月16日
 * @王 鸿
 * @Administrator
 */
public class UserServiceImpl implements IUserInfoservice {
	// 创建dao层的实例
	IUserDao user = new UserDaoImpl();

	// 用户名和密码 用户登录
	@Override
	public boolean userlogin(UserInfo info) throws Exception {
		return user.userlogin(info);
	}

	// 用户的手机号和验证码登陆
	@Override
	public boolean userphonelogin(UserInfo info) throws Exception {
		// TODO Auto-generated method stub
		return user.userphonelogin(info);
	}

}
