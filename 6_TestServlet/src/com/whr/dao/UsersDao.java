package com.whr.dao;  
  
import java.util.List;
import com.whr.entity.Users;  
  
public interface UsersDao {  
    public int addUser(Users u);     
    public List<Users> getAllUsers();  
}  