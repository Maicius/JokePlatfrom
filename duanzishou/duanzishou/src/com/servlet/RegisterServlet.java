package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBManager.RegisterDao;
import com.Service.RegisterService;

import UserVo.UserVoClass;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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

	private String checkUserName(HttpServletRequest request, HttpServletResponse response){
		String userName = request.getParameter("userName");
		RegisterDao registerDao = new RegisterDao();
		boolean notExist = registerDao.notExist(userName);
		String msg="";
		if(!notExist){
			msg="用户已存在";
			
			return msg;
		}else{
			msg="注意：用户名一旦确定将不能修改";
		}
		System.out.println(msg);
		return msg;
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		String msg = "";
		String flag = request.getParameter("flag");
		System.out.println("Enter RegisterFlag"+flag);
		if (flag.equals("checkUserName")) {
			msg = checkUserName(request, response);

		} else {
			int userID = 0;
			String userName = request.getParameter("user");
			String password = request.getParameter("passwd");
			int credit = 10;
			String headImg = this.getServletContext().getRealPath("/images/index_head.jpg");
			UserVoClass userVo = new UserVoClass(userID, userName, password, credit, headImg);
			RegisterService registerService = new RegisterService();

			if (!registerService.preRegister(userVo)) {
				request.setAttribute("registerResult", "用户名已经存在！");
				request.getRequestDispatcher("/tiaozhuan.jsp").forward(request, response);
			} else {
				boolean b = registerService.register(userVo);
				if (b) {
					request.setAttribute("registerResult", "注册成功！");
					request.getRequestDispatcher("/tiaozhuan.jsp").forward(request, response);
				} else {
					request.setAttribute("registerResult", "注册失败！");
					request.getRequestDispatcher("/tiaozhuan.jsp").forward(request, response);
				}
			}
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		System.out.println("Servlet:"+msg);
		out.print(msg);
		out.flush();
		out.close();
	}

}
