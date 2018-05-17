package cn.wh.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wh.shop.entity.UserInfo;
import cn.wh.shop.service.IUserInfoservice;
import cn.wh.shop.service.impl.UserServiceImpl;
import cn.wh.shop.util.SmsDemo;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;

/**
 * Servlet implementation class UserInfoServlet
 */
@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// servler 层的实例化
	IUserInfoservice userInfoservice = new UserServiceImpl();
	// 创建out的对象
	PrintWriter out = null;

	// 短信的验证码；
	static String number;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String oper = request.getParameter("oper");
		// 获取前台的用户名
		String uname = request.getParameter("uname");
		// 获取前台的密码
		String upwd = request.getParameter("upwd");
		// 获取前台的手机号
		String phone = request.getParameter("phone");
		// 获取前台的验证码
		String VerificationCode = request.getParameter("VerificationCode");
		System.out.println(VerificationCode + "------------");
		System.out.println(uname);
		if (oper.equals("login")) {

			if (phone == null && VerificationCode == null) {
				System.out.println("ssssssss");
				try {

					Userinfo(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (uname == null && upwd == null) {
				try {

					UserInfo info = new UserInfo();
					info.setUphone(Integer.parseInt(phone));
					boolean userphonelogin = userInfoservice
							.userphonelogin(info);
					System.out.println(VerificationCode);
					// 创建一个Boolean类的变量
					boolean flag = false;
					if (userphonelogin && number.equals(VerificationCode)) {
						flag = true;
					}
					System.out.println(flag);
					// 将检索出来的值重新打回前台
					out = response.getWriter();
					out.print(flag);
					out.flush();
					out.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} else if (oper.equals("phone")) {
			try {
				UserinfoIPhone(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	// 用户登录以及跳转 ajax
	public void Userinfo(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 创建一个Boolean类的变量
		boolean flag = false;
		// 获取前台的用户名
		String uname = request.getParameter("uname");
		// 获取前台的密码
		String upwd = request.getParameter("upwd");
		// 创建userinfo 的对象
		UserInfo info = new UserInfo();
		info.setUname(uname);
		info.setUpwd(upwd);
		boolean userlogin = userInfoservice.userlogin(info);
		if (userlogin) {
			flag = true;
		}
		System.out.println(flag);
		// 将检索出来的值重新打回前台
		out = response.getWriter();
		out.print(flag);
		out.flush();
		out.close();
	}

	// 用户手机号登录以及跳转 ajax
	public void UserinfoIPhone(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 获取前台的手机号
		String phone = request.getParameter("phone");

		// 发送短信的方法
		SendSmsResponse sendSms = SmsDemo.sendSms(phone);
		number = sendSms.getCode();
		// 创建一个Boolean类的变量

	}
}
