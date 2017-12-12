package dao;
import java.sql.*;
import java.util.ArrayList;
import bean.StudentBean;
import utility.DBUtility;

public class StudentDao {

    public ArrayList listAllStudents() throws Exception{
        DBUtility dbu = new DBUtility();
        Connection conn = dbu.getConnection();
        ArrayList students = new ArrayList();
        try{
            String sql = "SELECT id, pwd, place, uid, username FROM students";
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql);

            while (rs.next()){
                StudentBean student = new StudentBean();
                student.setId(rs.getInt("id"));
                student.setPwd(rs.getString("pwd"));
                student.setPlace(rs.getString("place"));
                student.setUid(rs.getString("uid"));
                student.setUsername(rs.getString("username"));
                students.add(student);
            }
            rs.close();
            stat.close();
        }catch (SQLException e1){
            e1.printStackTrace();
        }finally {
            try{
                if (conn != null){
                    dbu.closeConn(conn);
                }
            }catch (Exception e2){

            }
        }
        return students;
    }


    public ArrayList searchList(String id_s,  String pwd_s, String place_s,
                                String uid_s, String username_s){
        DBUtility dbu = new DBUtility();
        Connection conn = dbu.getConnection();
        ArrayList students = new ArrayList();
        try{
            String sql = "SELECT * FROM students WHERE id = ? AND " + "%' AND pwd like '%" +pwd_s +  "%' AND " +
                    "place like '%" + place_s + "%' AND uid like '%" + uid_s + "%' AND " +
                    "username like '%" + username_s + "%'" ;
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,Integer.parseInt(id_s));
            ResultSet rs = (ResultSet) ps.executeQuery();
            while (rs.next()){
                StudentBean student = new StudentBean();
                int id = rs.getInt("id");
                student.setId(id);
                student.setPwd(rs.getString("pwd"));
                student.setPlace(rs.getString("place"));
                student.setUid(rs.getString("uid"));
                student.setUsername(rs.getString("username"));
                students.add(student);
                System.out.println("id = " + id + ",username = " + student.getUsername());
            }
            rs.close();
            ps.close();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                if (conn != null){
                    dbu.closeConn(conn);
                }
            }catch (Exception e2){

            }
        }

        return students;
    }


    public int Add(StudentBean stu){
        DBUtility dbu = new DBUtility();
        Connection conn = dbu.getConnection();
        try{
            String sql = "INSERT INTO students (id, pwd, place, uid, username) " +
                    "VALUES (?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,stu.getId());
            ps.setString(2, stu.getPwd());
            ps.setString(3, stu.getPlace());
            ps.setString(4, stu.getUid());
            ps.setString(5, stu.getUsername());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            try {
                conn.rollback();
            } catch (SQLException el) {
                el.printStackTrace();
            }
            return 0;
        }finally {
            dbu.closeConn(conn);
        }
        return 1 ;
    }
}
