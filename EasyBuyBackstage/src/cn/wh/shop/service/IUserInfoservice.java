package cn.wh.shop.service;

import cn.wh.shop.entity.UserInfo;

/**
 * @2018��5��16��
 * @�� ��
 * @Administrator
 */
public interface IUserInfoservice {
	// �û��������� �û���¼
	public boolean userlogin(UserInfo info) throws Exception;

	// �û����ֻ��ź���֤���½
	public boolean userphonelogin(UserInfo info) throws Exception;
}
