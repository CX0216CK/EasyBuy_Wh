package cn.wh.shop.entity;

/**
 * @2018��5��16��
 * @�� ��
 * @Administrator �û���ʵ����
 */
public class UserInfo {
	// �û�id
	private int uid;
	// �û���
	private String uname;
	// �û�����
	private String upwd;
	// �û��绰
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
