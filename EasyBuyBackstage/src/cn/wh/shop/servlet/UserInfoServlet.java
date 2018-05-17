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
	// servler ���ʵ����
	IUserInfoservice userInfoservice = new UserServiceImpl();
	// ����out�Ķ���
	PrintWriter out = null;

	// ���ŵ���֤�룻
	static String number;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String oper = request.getParameter("oper");
		// ��ȡǰ̨���û���
		String uname = request.getParameter("uname");
		// ��ȡǰ̨������
		String upwd = request.getParameter("upwd");
		// ��ȡǰ̨���ֻ���
		String phone = request.getParameter("phone");
		// ��ȡǰ̨����֤��
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
					// ����һ��Boolean��ı���
					boolean flag = false;
					if (userphonelogin && number.equals(VerificationCode)) {
						flag = true;
					}
					System.out.println(flag);
					// ������������ֵ���´��ǰ̨
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

	// �û���¼�Լ���ת ajax
	public void Userinfo(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// ����һ��Boolean��ı���
		boolean flag = false;
		// ��ȡǰ̨���û���
		String uname = request.getParameter("uname");
		// ��ȡǰ̨������
		String upwd = request.getParameter("upwd");
		// ����userinfo �Ķ���
		UserInfo info = new UserInfo();
		info.setUname(uname);
		info.setUpwd(upwd);
		boolean userlogin = userInfoservice.userlogin(info);
		if (userlogin) {
			flag = true;
		}
		System.out.println(flag);
		// ������������ֵ���´��ǰ̨
		out = response.getWriter();
		out.print(flag);
		out.flush();
		out.close();
	}

	// �û��ֻ��ŵ�¼�Լ���ת ajax
	public void UserinfoIPhone(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// ��ȡǰ̨���ֻ���
		String phone = request.getParameter("phone");

		// ���Ͷ��ŵķ���
		SendSmsResponse sendSms = SmsDemo.sendSms(phone);
		number = sendSms.getCode();
		// ����һ��Boolean��ı���

	}
}
