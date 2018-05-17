package cn.wh.shop.entity;

/**
 * @2018年5月16日
 * @王 鸿
 * @Administrator 用户的实体类
 */
public class UserInfo {
	// 用户id
	private int uid;
	// 用户名
	private String uname;
	// 用户密码
	private String upwd;
	// 用户电话
	private int uphone;

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public int getUphone() {
		return uphone;
	}

	public void setUphone(int uphone) {
		this.uphone = uphone;
	}

}
