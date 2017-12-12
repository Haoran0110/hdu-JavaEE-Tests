package com.whr.dao.impl;  
  
import java.sql.Connection;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.ArrayList;  
import java.util.List;

import com.whr.dao.BaseDao;
import com.whr.dao.UsersDao;
import com.whr.entity.Users;  
  
public class UsersDaoImpl extends BaseDao implements UsersDao {  
  
    Connection conn = null;  
    PreparedStatement pstmt = null;  
    ResultSet rs = null;  
  
    @Override  
    public int addUser(Users u) {  
        int num = 0;  
        String sql = "insert into users(name,sid) values(?,?)";  
        try {  
            num = executeUpdate(sql);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        return num;  
    }  
  
    @Override  
    public List<Users> getAllUsers() {  
        List<Users> ulist = new ArrayList<Users>();  
        String sql = "select * from users";  
        rs = executeQuery(sql);  
        try {  
            while (rs.next()) {  
                Users u = new Users(rs.getInt(1), rs.getString(2), rs.getInt(3));  
                ulist.add(u);  
            }  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
        return ulist;  
    }  
  
}  