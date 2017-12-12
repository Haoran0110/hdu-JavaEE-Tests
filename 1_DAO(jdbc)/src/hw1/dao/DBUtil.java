package hw1.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBUtil {


private Statement stmt;


public Connection getConnection(){
	try{
		Class.forName("com.mysql.jdbc.Driver");
	  return DriverManager.getConnection("jdbc:mysql://localhost:3306/mytest","root","zjygfxxyxs1220");
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}
	return null;
}

public Connection getConnection(String url,String username,String pwd){
    
	try{
		
		Class.forName("com.mysql.jdc.Driver");
		return DriverManager.getConnection(url,username,pwd);
	} catch(ClassNotFoundException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}
	return null;
}	
public Connection openConnection(){
	  Properties prop=new Properties();
      String driver=null;
      String username=null;
      String url=null;
      String pwd=null;
      
	try{
	 prop.load(this.getClass().getClassLoader().getResourceAsStream("DBConfig.properties"));
	     driver=prop.getProperty("driver");
	     url=prop.getProperty("url");
	     username=prop.getProperty("username");
	     pwd=prop.getProperty("pwd");
		Class.forName(driver);
		return DriverManager.getConnection(url,username,pwd);
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}catch(SQLException e){
	    e.printStackTrace();
    }catch(Exception e){
	    e.printStackTrace();
    }
	return null;
}	

public void closeConn(Connection conn){  	
 try {
	conn.close();
  } catch (SQLException e) {
	// TODO Auto-generated catch block
	System.out.println("数据库关闭异常");
	e.printStackTrace();
  }
}

public int addpp(int i, int j) {
	// TODO Auto-generated method stub
	return 0;
}




public void list(){
	DBUtil util=new DBUtil();
	Connection conn=util.getConnection();
	String sql = "select id ,username,password from user";
	try{
		Statement stmt=conn.createStatement();
		ResultSet rs= (ResultSet) stmt.executeQuery(sql);
		while(rs.next()){
			int id=rs.getInt("id");
			String username=rs.getString(2);
			String pwd=rs.getString("password");
			
			System.out.println("id="+id+",username="+username);
		}
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
}

@SuppressWarnings("null")
public void add(UserBean usr){

Connection conn = null;
try{
	DBUtil util = new DBUtil();
	Connection Connection = util.openConnection();
	String sql="insert into user（name，age，money） values（wendy，20，50）";
	Stmt.setString(1,usr.getName());
    Stmt.setInt(1,usr.getAge());
	Stmt.setInt(1,usr.getMoney());

		stmt.executeUpdate(sql);
		
	}catch(SQLException e){
		e.printStackTrace();
		try{
			conn.rollback();
		}catch(SQLException el){
			el.printStackTrace();
		}
	}finally{
		DBUtil util = null;
		util.closeConn(conn);
	}
	
  
}


public void change(int user1, int user2, int money)
{

	DBUtil util = new DBUtil();
	Connection  conn=util.openConnection();
	String sql1="update user set money=money- "+money;
	String sql2="update user set money=money+ "+money;
	
	try{
		conn.setAutoCommit(false);//true
		Statement stmt=conn.createStatement();
		stmt.executeUpdate(sql1);
		stmt.executeUpdate(sql2);
		conn.commit();
	}catch(SQLException e){
		e.printStackTrace();
		try{
			conn.rollback();
		}catch(SQLException el){
			el.printStackTrace();
		}
	}finally{
		util.closeConn(conn);
	}
	
  
}

}
