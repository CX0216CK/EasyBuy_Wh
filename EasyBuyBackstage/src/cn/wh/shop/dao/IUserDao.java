package cn.wh.shop.dao;

import cn.wh.shop.entity.UserInfo;

/**
 * @2018年5月16日
 * @王 鸿
 * @Administrator
 */
public interface IUserDao {
	// 用户名和密码 用户登录
	public boolean userlogin(UserInfo info) throws Exception;

	// 用户的手机号和验证码登陆
	public boolean userphonelogin(UserInfo info) throws Exception;
}
