package cn.wh.shop.util;


/**
 * @2018年5月12日
 * @王 鸿
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

	// 当前页面
	private int pageindex;
	// 每页的记录数据
	private int pageSize;
	// 总记录数
	private int totalRecords;
	// 总页数
	private int totalpages;
	// 数据本身
	// private List<User> list;

	// public List<User> getList() {
	// return list;
	// }

	// public void setList(List<User> list) {
	// this.list = list;
	// }
}
