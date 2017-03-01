package com.Service;

import java.util.List;

import com.DBManager.RegisterDao;

import UserVo.JokeVo;
import UserVo.UserVoClass;
import jdk.nashorn.internal.runtime.UserAccessorProperty;

public class RegisterService {

	RegisterDao registerDao = new RegisterDao();

	public boolean register(UserVoClass userVo) {
		System.out.println("registerService ");
		return registerDao.register(userVo);
	}
	public boolean preRegister(UserVoClass userVo) {
		System.out.println("preRegisterService " + userVo.getUserName());
		return registerDao.notExist(userVo.getUserName());
	}

	public List<UserVoClass> userInfo(UserVoClass userVo) {
		return registerDao.findUser(userVo);
	}
	public boolean logIn(String userName,String password) {
		return registerDao.logIn(userName,password);
	}
	public boolean changepsw(UserVoClass userVo) {
		return registerDao.changepsw(userVo);
	}
}
