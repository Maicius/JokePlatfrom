package com.Service;

import java.util.List;

import com.DBManager.JokeDao;
import com.DBManager.RegisterDao;
import com.sun.org.apache.bcel.internal.generic.NEW;

import UserVo.JokeVo;

public class PersonalService {

	JokeDao jokeDao = new JokeDao();
	public boolean addJoke(JokeVo jokeVo) {
		return jokeDao.addJoke(jokeVo);
	}
	public List<JokeVo> relaxA() {
		return jokeDao.relaxA();
	}
	public List<JokeVo> relaxB() {
		return jokeDao.relaxB();
	}
	public List<JokeVo> relaxType(String str) {
		return jokeDao.relaxType(str);
	}
	public List<JokeVo> history(String str) {
		return jokeDao.history(str);
	}
}
