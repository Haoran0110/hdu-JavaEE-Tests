package com.whr.entity;  
  
/** 
 * users表所对应的实体类 
 */  
public class Users {  
  
    // 实体类的属性和表的字段名称一一对应  
    private int id;  
    private String name;  
    private int sid;  
  
    public Users(int id, String name, int sid) {  
        this.id = id;  
        this.name = name;  
        this.sid = sid;  
    }  
  
    public Users() {  
    }  
  
    public int getId() {  
        return id;  
    }  
  
    public void setId(int id) {  
        this.id = id;  
    }  
  
    public String getName() {  
        return name;  
    }  
  
    public void setName(String name) {  
        this.name = name;  
    }  
  
    public int getSid() {  
        return sid;  
    }  
  
    public void setSid(int sid) {  
        this.sid = sid;  
    }  
  
    @Override  
    public String toString() {  
        return "User [id=" + id + ", name=" + name + ", sid=" + sid + "]";  
    }  
}  