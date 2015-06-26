package com.woliao.service;

import java.util.List;

import com.woliao.dao.PropDAO;
import com.woliao.model.Prop;

public class PropService {
	//获取所有道具
	public Prop getProp(String username){
		return new PropDAO().getProp(username);
	}
	
	//修改道具
	public void modifyProp(String username, String propName, int num){
		new PropDAO().modifyProp(username, propName, num);
	}
}
