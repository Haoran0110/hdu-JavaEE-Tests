package com.ibm.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DButil {
	private final String DBURL ="jdbc:mysql://localhost:3306/ibm";
	private final String DBUSER = "root";
	private final String DBPASSWORD = "zjygfxxyxs1220";
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public DButil(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void close(){
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt!=null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public ResultSet executeQuery(String sql,Object... params) {//可变参数
		try {
			stmt = con.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				this.stmt.setObject(i+1, params[i]);
			}
			rs = stmt.executeQuery();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return rs;
	}
	public int executeUpdate(String sql,Object... params){
		int result = 0;
		try {
			stmt = con.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				this.stmt.setObject(i+1, params[i]);
			}
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
