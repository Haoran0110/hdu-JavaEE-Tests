package com.whr.dao;

import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;  

public class BaseDao {
	public static final String DRIVER = "com.mysql.jdbc.Driver";  
    public static final String URL = "jdbc:mysql://localhost:3306/mydatabase";  
    public static final String USER = "root";  
    public static final String PASSWORD = "zjygfxxyxs1220";  
  
    Connection conn = null;  
    PreparedStatement pstmt = null;  
    ResultSet rs = null;  
  
    public void getConnection() {  
        try {  
            Class.forName(DRIVER);  
            conn = DriverManager.getConnection(URL, USER, PASSWORD);  
        } catch (ClassNotFoundException e) {  
            e.printStackTrace();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
    }  
  
    public int executeUpdate(String sql) {  
        int num = 0;  
        getConnection();  
        try {  
            pstmt = conn.prepareStatement(sql);               
            num = pstmt.executeUpdate();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        } finally {  
            closeAll();  
        }  
        return num;  
    }  
  
    public ResultSet executeQuery(String sql) {  
        getConnection();  
        try {  
            pstmt = conn.prepareStatement(sql);               
            rs = pstmt.executeQuery();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
        return rs;  
    }  
  
    public void closeAll() {  
        try {  
            rs.close();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
        try {  
            pstmt.close();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
        try {  
            conn.close();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
    }  
}
