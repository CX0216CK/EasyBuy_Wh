package cn.wh.shop.util;


/**
 * @2018��5��12��
 * @�� ��
 * @Administrator
 */
public class PageUtil {
	public int getPageindex() {
		return pageindex;
	}

	public void setPageindex(int pageindex) {
		this.pageindex = pageindex;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public int getTotalpages() {
		return totalpages;
	}

	public void setTotalpages(int totalpages) {
		this.totalpages = totalpages;
	}

	// ��ǰҳ��
	private int pageindex;
	// ÿҳ�ļ�¼����
	private int pageSize;
	// �ܼ�¼��
	private int totalRecords;
	// ��ҳ��
	private int totalpages;
	// ���ݱ���
	// private List<User> list;

	// public List<User> getList() {
	// return list;
	// }

	// public void setList(List<User> list) {
	// this.list = list;
	// }
}
