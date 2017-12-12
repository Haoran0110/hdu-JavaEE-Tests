package utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtility {
    public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false",
                    "root", "zjygfxxyxs1220");
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public void closeConn(Connection conn) {
        try {
            if(conn != null)
                conn.close();
        } catch (SQLException e) {
            System.out.println("数据库关闭异常");
            e.printStackTrace();
        }
    }
}
