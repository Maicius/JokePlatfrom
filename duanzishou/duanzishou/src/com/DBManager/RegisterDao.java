package com.DBManager;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import UserVo.UserVoClass;
import UserVo.JokeVo;

public class RegisterDao extends DBManager {

	String insertsql = "insert into user (userName,password,credit,headImg)values(?,?,?,?)";
	String deletesql = "delete from user where userID = ?";
	String changepswsql = "update user set password = ?  where userName = ?";
	String findsql = "select * from user where userName = ?";
	String LogInsql = "select userName,password from user where userName = ? and password =?";

	public boolean register(UserVoClass userVo) {
		System.out.println("register Dao");
		connectDB();
		try {
			Object[] args = new Object[4];
			args[0] = userVo.getUserName();
			args[1] = userVo.getPassword();
			args[2] = userVo.getCredit();
			args[3] = userVo.getHeadImg();
			int res = executeUpdate(insertsql, args);
			closeDB();
			return res > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean notExist(String userName) {
		connectDB();
		ResultSet resultSet = null;
		String string;
		try {
			Object[] args = new Object[1];
			args[0] = userName;
			System.out.println("arg[0] = " + args[0]);
			resultSet = executeQuery(findsql, args);
			System.out.println(resultSet);
			while (resultSet.next()) {
				string = resultSet.getString("userName");
				System.out.println("string = " + string + "check = " + string.equals(userName));
				if (string.equals(userName)) {
					System.out.println("false!");
					closeDB();
					return false;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;

	}

	public boolean logIn(String userName, String password) {
		connectDB();
		ResultSet rSet = null;
		String str1;
		String str2;
		try {
			Object[] args = new Object[2];
			args[0] = userName;
			args[1] = password;
			rSet = executeQuery(LogInsql, args);
			while (rSet.next()) {
				str1 = rSet.getString("userName");
				str2 = rSet.getString("password");
				if (str1.equals(userName) && str2.equals(password)) {
					closeDB();
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	public List<UserVoClass> findUser(UserVoClass userVo) {
		connectDB();
		ResultSet resultSet = null;
		List<UserVoClass> list = new ArrayList<UserVoClass>();
		try {
			Object[] args = new Object[1];
			args[0] = userVo.getUserName();
			System.out.println("@@@" + args[0]);
			resultSet = executeQuery(findsql, args);
			while (resultSet.next()) {
				userVo.setId(resultSet.getInt("userID"));
				userVo.setUserName(resultSet.getString("userName"));
				userVo.setPassword(resultSet.getString("password"));
				userVo.setCredit(resultSet.getInt("credit"));
				userVo.setHeadImg(resultSet.getString("headImg"));
				list.add(userVo);
			}
			closeDB();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean delete(UserVoClass userVo) {
		connectDB();
		try {
			Object[] args = new Object[3];
			args[0] = userVo.getUserName();
			args[1] = userVo.getPassword();
			args[2] = userVo.getCredit();
			int res = executeUpdate(deletesql, args);
			closeDB();
			return res > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}

	public boolean changepsw(UserVoClass userVo) {
		connectDB();
		try {
			Object[] args = new Object[2];
			args[0] = userVo.getPassword();
			args[1] = userVo.getUserName();
			int res = executeUpdate(changepswsql, args);
			closeDB();
			return res > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}

}
