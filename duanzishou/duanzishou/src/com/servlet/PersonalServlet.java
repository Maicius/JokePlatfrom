package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.Service.PersonalService;
import com.Service.RegisterService;

import UserVo.JokeVo;
import UserVo.UserVoClass;

/**
 * Servlet implementation class PersonalServlet
 */
@WebServlet("/PersonalServlet")
@MultipartConfig
public class PersonalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PersonalServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected String processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 处理中文文件名
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		Part part = request.getPart("fileToUpload");
		String fileName = getFileName(part);
		if (fileName != null && fileName.trim().length() > 0) {
			System.out.println("fileName = " + fileName);
			int index = fileName.lastIndexOf('\\');
			// String saveFileName = fileName.substring(index + 1);
			String saveFileName = getPartNewSaveFileName() + fileName.substring(index + 1);// 带时间的文件名，保证文件唯一不被覆盖
			System.out.println("saveFileName = " + saveFileName);
			String savePath = this.getServletContext().getRealPath("/pictures");// 文件保存的路径
			createFiles(savePath);
			String saveFilePath = savePath + File.separator + saveFileName;// 文件所在地址
			System.out.println("saveFilePath = " + saveFilePath);
			// 将文件写入location指定的目录
			part.write(saveFilePath);
			return saveFilePath;
		}
		return null;

	}

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
		int jokeID = 0;
		String flag = request.getParameter("flg");// 点击事件标志
		String content = request.getParameter("text");// 段子文本输入框
		String type = request.getParameter("log");// 选择的分类

		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("userName");// 用户名字
		int userID = (int) session.getAttribute("userID");
		String headImg = (String) session.getAttribute("headImg");
		int credit = (int) session.getAttribute("credit");

		System.out.println("session credit = " + credit);
		List<JokeVo> list = new ArrayList<JokeVo>();
		PersonalService pService = new PersonalService();
		RegisterService rService = new RegisterService();
		JokeVo jokeVo = null;
		if (flag != null) {
			if (flag.equals("headImg")) {// 改变用户信息
				request.getRequestDispatcher("/changeUserInfo.jsp").forward(request, response);

			} else if (flag.equals("creditMsg")) {// 查看用户积分
				request.getRequestDispatcher("/mycredit.jsp").forward(request, response);

			} else if (flag.equals("history")) {//查看用户历史段子
				list = pService.history(userName);
				request.setAttribute("history", list);
				request.getRequestDispatcher("/historyPage.jsp").forward(request, response);

			} else if (flag.equals("submit")) {// 发送段子
				if (content.equals("有什么倒霉的事情说出来让我们高兴一下吧！")) {
					out.print("<script>alert(\"好像你什么都没有写呢，快去写点什么吧！\");location.href='personalPage.jsp';</script>");
					out.flush();
					out.close();
					return;
				}
				String imagePath = processRequest(request, response);
				jokeVo = new JokeVo(jokeID, userName, content, imagePath, type);

				boolean b = pService.addJoke(jokeVo);
				if (b) {
					out.print("<script>alert(\"发送成功\");location.href='personalPage.jsp';</script>");
					out.flush();
					out.close();
				}

			} else if (flag.equals("relaxA")) {// 轻松一刻
				list = pService.relaxA();
				request.setAttribute("relaxA", list);
				request.getRequestDispatcher("/relaxApage.jsp").forward(request, response);

			} else if (flag.equals("relaxB")) {// 每日一笑
				list = pService.relaxB();
				request.setAttribute("relaxB", list);
				request.getRequestDispatcher("/relaxBpage.jsp").forward(request, response);

			} else if (flag.equals("relaxC")) {// 生活
				list = pService.relaxType("life");
				request.setAttribute("relaxC", list);
				request.getRequestDispatcher("/relaxCpage.jsp").forward(request, response);

			} else if (flag.equals("relaxD")) {// 校园
				list = pService.relaxType("school");
				request.setAttribute("relaxD", list);
				request.getRequestDispatcher("/relaxDpage.jsp").forward(request, response);

			} else if (flag.equals("relaxE")) {// 杂闻
				list = pService.relaxType("sundry");
				request.setAttribute("relaxE", list);
				request.getRequestDispatcher("/relaxEpage.jsp").forward(request, response);

			} else if (flag.equals("relaxF")) {// 其他
				list = pService.relaxType("others");
				request.setAttribute("relaxF", list);
				request.getRequestDispatcher("/relaxFpage.jsp").forward(request, response);

			} else if (flag.equals("changepsw")) {// 修改密码

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

	private String getPartNewSaveFileName() {
		Calendar calendar = Calendar.getInstance();
		String y = String.valueOf(calendar.get(Calendar.YEAR));
		String m = String.valueOf(calendar.get(Calendar.MONTH));
		String d = String.valueOf(calendar.get(Calendar.DATE));
		String h = String.valueOf(calendar.get(Calendar.HOUR_OF_DAY));
		String min = String.valueOf(calendar.get(Calendar.MINUTE));
		String s = String.valueOf(calendar.get(Calendar.SECOND));
		String ms = String.valueOf(calendar.get(Calendar.MILLISECOND));
		return y + m + d + h + min + s + ms;
	}

	private String getFileName(Part part) {
		String header = part.getHeader("content-disposition");
		System.err.println("header = " + header);
		String fileName = header.substring(header.indexOf("filename=\"") + 10, header.lastIndexOf("\""));
		return fileName;
	}

	private void createFiles(String filepath) {
		File file;
		try {
			file = new File(filepath);
			if (!file.exists()) {
				file.mkdirs();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private boolean isBlank(String str) {
		if (str == null && (str.length() == 0)) {
			return true;
		}
		return false;
	}

}
