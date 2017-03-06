package com.DBManager;

import java.sql.*;

public class DBManager {

	// 数据库连接常量
	public static final String DRIVER = "com.mysql.jdbc.Driver";
	public static final String USER = "root";
	public static final String PASS = "110110";
	public static final String URL = "jdbc:mysql://localhost:3306/jokebase?useUnicode=true&characterEncoding=UTF-8";

	// 静态成员，支持单态模式
	private static DBManager per = null;
	private Connection conn = null;
	private PreparedStatement preparedStatement = null;

	// 单态模式
	DBManager() {
	}

	public static DBManager createInstance() {
		if (per == null) {
			per = new DBManager();
			per.initDB();
		}
		return per;
	}

	// 加载驱动
	
	public void initDB() {
		try {
			System.out.println("Initial Success");
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 连接数据库，获取句柄+对象
	public void connectDB() {
		System.out.println("Connecting to database...");
		try {
			initDB();
			conn = DriverManager.getConnection(URL, USER, PASS);
			
			System.out.println("SqlManager:Connect to database successful.");
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}

	// 关闭数据库 关闭对象，释放句柄
	public void closeDB() {
		System.out.println("Close connection to database..");
		try {
			preparedStatement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("Close connection successful");
	}

	// 查询
	public ResultSet executeQuery(String sql,Object[] args) {
		ResultSet rs = null;
		try {
			preparedStatement = conn.prepareStatement(sql);
			for(int i=1;i<args.length+1;i++){
				preparedStatement.setObject(i,args[i-1]);
			}
			rs = preparedStatement.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet executeQuery2(String sql) {//用于随机查询段子
		ResultSet rs = null;
		try {
			preparedStatement = conn.prepareStatement(sql);
			rs = preparedStatement.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	// 增添/删除/修改
	public int executeUpdate(String sql, Object[] args) {
		int ret = 0;
		try {
			preparedStatement = conn.prepareStatement(sql);
			for(int i=1;i<args.length+1;i++){
				preparedStatement.setObject(i,args[i-1]);
			}
			System.out.println(sql);
			ret = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
}
