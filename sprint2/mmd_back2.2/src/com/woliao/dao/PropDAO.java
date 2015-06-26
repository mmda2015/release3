package com.woliao.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.woliao.constant.Config;
import com.woliao.model.Prop;
import com.woliao.model.User;
import com.woliao.util.DaoUtil;

public class PropDAO {
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

	

	// 获取所有道具
	public Prop getProp(String username) {
		Prop prop = new Prop();

		getConnection();
		try {
			String sql = "select * from prop where username = '" + username
					+ "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				prop.setId(rs.getInt("id"));
				prop.setUsername(rs.getString("username"));
				prop.setDeng(rs.getInt("tip"));
				prop.setKa(rs.getInt("heart"));
				prop.setScore(rs.getInt("score"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DaoUtil.closeConnection(conn, stmt, rs);
		}
		return prop;
	}

	// 修改道具
	public void modifyProp(String username, String propName, int num) {
		getConnection();
		String sqlQuery = "select " + propName
				+ " from prop where username = '" + username + "' ";
		try {
			rs = stmt.executeQuery(sqlQuery);
			rs.next();
			int updateNum = num + rs.getInt(1);
			String sqlUpdate = "update prop set " + propName + " = "
					+ updateNum + " where username = '" + username + "'";
			stmt.executeUpdate(sqlUpdate);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DaoUtil.closeConnection(conn, stmt, rs);
		}
	}

	// 添加道具
	public void addProp(String username) {
		getConnection();
		String sql = "insert into prop (username,tip,heart,score) values ('" + username + "','5','5','300')";
		try {
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DaoUtil.closeConnection(conn, stmt, rs);
		}
	}

}
