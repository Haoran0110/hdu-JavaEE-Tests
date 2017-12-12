package com.ssh.dao;
import com.ssh.entity.TUser;

public interface UserDAO {
	public TUser queryUserByName(String name);//查询函数
}
