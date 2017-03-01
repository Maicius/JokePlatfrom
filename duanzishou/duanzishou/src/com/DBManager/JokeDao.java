package com.DBManager;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import UserVo.JokeVo;

public class JokeDao extends DBManager{
	
	String insertsql = "insert into joke (userName,content,imagePath,type)values(?,?,?,?)";
	String relaxAsql = "select * from joke order by rand() limit 10";
	String relaxBsql = "select * from joke order by rand() limit 10";
	String relaxCsql = "select * from joke where type = ? order by rand() limit 10";
	String historysql = "select * from joke where userName = ?";

	
	
	public boolean addJoke(JokeVo jokeVo) {
		connectDB();
		try {
			Object[] args = new Object[4];
			args[0]=jokeVo.getUserName();
			args[1]=jokeVo.getContent();
			args[2]=jokeVo.getImagePath();
			args[3]=jokeVo.getType();
			int res = executeUpdate(insertsql, args);
			closeDB();
			return res > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<JokeVo> relaxA() {
		connectDB();
		
		ResultSet resultSet = null;
		List<JokeVo> list = new ArrayList<JokeVo>();
		try {
			resultSet = executeQuery2(relaxAsql);
			while (resultSet.next()) {
				JokeVo jokeVo = new JokeVo();
				jokeVo.setId(resultSet.getInt("jokeID"));
				jokeVo.setUserName(resultSet.getString("userName"));
				jokeVo.setContent(resultSet.getString("content"));
				jokeVo.setImagePath(resultSet.getString("imagePath"));
				list.add(jokeVo);
			}
			closeDB();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<JokeVo> relaxB() {
		connectDB();
		ResultSet resultSet = null;
		List<JokeVo> list = new ArrayList<JokeVo>();
		try {
			resultSet = executeQuery2(relaxBsql);
			while (resultSet.next()) {
				JokeVo jokeVo = new JokeVo();
				jokeVo.setId(resultSet.getInt("jokeID"));
				jokeVo.setUserName(resultSet.getString("userName"));
				jokeVo.setContent(resultSet.getString("content"));
				jokeVo.setImagePath(resultSet.getString("imagePath"));
				list.add(jokeVo);
			}
			closeDB();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<JokeVo> relaxType(String str) {
		connectDB();
		
		ResultSet resultSet = null;
		List<JokeVo> list = new ArrayList<JokeVo>();
		try {
			Object[] args = new Object[1];
			args[0] = str;
			resultSet = executeQuery(relaxCsql,args);
			while (resultSet.next()) {
				JokeVo jokeVo = new JokeVo();
				jokeVo.setId(resultSet.getInt("jokeID"));
				jokeVo.setUserName(resultSet.getString("userName"));
				jokeVo.setContent(resultSet.getString("content"));
				jokeVo.setImagePath(resultSet.getString("imagePath"));
				list.add(jokeVo);
			}
			closeDB();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<JokeVo> history(String str) {
		connectDB();
		
		ResultSet resultSet = null;
		List<JokeVo> list = new ArrayList<JokeVo>();
		try {
			Object[] args = new Object[1];
			args[0] = str;
			resultSet = executeQuery(historysql,args);
			while (resultSet.next()) {
				JokeVo jokeVo = new JokeVo();
				jokeVo.setId(resultSet.getInt("jokeID"));
				jokeVo.setUserName(resultSet.getString("userName"));
				jokeVo.setContent(resultSet.getString("content"));
				jokeVo.setImagePath(resultSet.getString("imagePath"));
				list.add(jokeVo);
			}
			closeDB();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
