package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Service.RegisterService;
import com.sun.glass.ui.CommonDialogs.Type;

import UserVo.UserVoClass;

/**
 * Servlet implementation class LogInServlet
 */
@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogInServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		int id = 0;
		int credit = 10;
		String userName = request.getParameter("username");
		String password = request.getParameter("p");
		String headImg = "";
		
		System.out.println("userName = " + userName + " password = " + password);
		
		UserVoClass userVo = new UserVoClass(id, userName, password, credit,headImg);
		RegisterService rService = new RegisterService();
		List<UserVoClass> list = new ArrayList<UserVoClass>();
		boolean b = rService.logIn(userName, password);
		if (b) {
			UserVoClass userVo2 = null;
			list = rService.userInfo(userVo);
			
			for(int i =0;i<list.size();i++) {//读出个人所有信息
				userVo2 = list.get(i);
			}
			
			/*用于保证用户在各个网页间跳转保持信息*/
			request.getSession().setAttribute("userID", userVo2.getId());
			request.getSession().setAttribute("userName", userVo2.getUserName());
			request.getSession().setAttribute("password", userVo2.getPassword());
			request.getSession().setAttribute("credit", userVo2.getCredit());
			request.getSession().setAttribute("headImg", userVo2.getHeadImg());//头像文件的路径
			
			//request.setAttribute("LogInResult", list);
			request.getRequestDispatcher("/personalPage.jsp").forward(request, response);//跳转到个人主页
		} else {
			request.setAttribute("registerResult", "密码或用户名错误！");
			request.getRequestDispatcher("/tiaozhuan.jsp").forward(request, response);
		}

	}

}
