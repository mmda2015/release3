package com.woliao.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.woliao.util.DaoUtil;

public class QuestionDAO {
	// 成员变量
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	// 驱动名
	final String driver = "com.mysql.jdbc.Driver";
	final String uri = "jdbc:mysql://localhost/mmd?useUnicode=true&amp;characterEncoding=UTF-8";

	// 获取连接
	private void getConnection() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(uri, "root", "123456");
			stmt = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//获取题目
	public List<String> getQuestion(int typeMain,int typeSub){
		List<String> questions = new ArrayList<String>();
		getConnection();
		String sql = "select * from ques where typeMain = "+typeMain+" and typeSub = "+typeSub+"";
		try {
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				questions.add(rs.getString("question"));
				questions.add(rs.getString("answer1"));
				questions.add(rs.getString("answer2"));
				questions.add(rs.getString("answer3"));
				questions.add(rs.getString("answer4"));
				questions.add(rs.getString("right"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DaoUtil.closeConnection(conn, stmt, rs);
		}
		return questions;
	}
}
