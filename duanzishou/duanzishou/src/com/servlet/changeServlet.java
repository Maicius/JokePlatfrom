package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Service.PersonalService;
import com.Service.RegisterService;

import UserVo.JokeVo;
import UserVo.UserVoClass;

/**
 * Servlet implementation class JokeServlet
 */
@WebServlet("/changeServlet")
public class changeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public changeServlet() {
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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String flag = request.getParameter("flg");// 点击事件标志

		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("userName");// 用户名字
		int userID = (int) session.getAttribute("userID");
		String headImg = (String) session.getAttribute("headImg");
		int credit = (int) session.getAttribute("credit");

		List<JokeVo> list = new ArrayList<JokeVo>();
		PersonalService pService = new PersonalService();
		RegisterService rService = new RegisterService();

		if (flag != null) {
			if (flag.equals("changepsw")) {// 修改密码

				String newPsw = request.getParameter("passwd");
				System.out.println("newPsw = " + newPsw);
				UserVoClass userVo = new UserVoClass(userID, userName, newPsw, credit, headImg);
				if (rService.changepsw(userVo)) {
					out.print("<script>alert(\"密码修改成功！\");location.href='index.jsp';</script>");
					out.flush();
					out.close();
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				} else {
					out.print("<script>alert(\"密码修改失败！\");location.href='personalPage.jsp';</script>");
					out.flush();
					out.close();
				}
			}
		}

	}

}
