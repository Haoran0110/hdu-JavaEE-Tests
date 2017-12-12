<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="dao.StudentDao"%>
<%@page import="bean.StudentBean" %>
<%@page import="utility.DBUtility" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>List</title>
</head>
<body>
    
    <h3>查看信息</h3>
    <form action="list.jsp" method="post">
        <p><span style="display:inline-block;width:80px;text-align:right;">id:</span> <input name="id" type="text"></p>
        <p><span style="display:inline-block;width:80px;text-align:right;">pwd:</span> <input name="pwd" type="text"></p>
        <p><span style="display:inline-block;width:80px;text-align:right;">place:</span> <input name="place" type="text"></p>
        <p><span style="display:inline-block;width:80px;text-align:right;">uid:</span> <input name="uid" type="text"></p>
        <p><span style="display:inline-block;width:80px;text-align:right;">username:</span> <input name="username" type="text"></p>
        <input type="submit" value="查询">&nbsp;&nbsp;&nbsp;
        <a href="new.jsp">增加学生</a>
    </form>
    
    <%
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        String place = request.getParameter("place");
        String uid = request.getParameter("uid");
        String username = request.getParameter("username");

        StudentDao studentdao = new StudentDao();
        ArrayList <StudentBean> students;
        if (id != null && !id.equals("") ||pwd != null && !pwd.equals("") || place != null && !place.equals("")
                || uid != null && !uid.equals("") || username != null && !username.equals("") ){
            students = studentdao.searchList(id, pwd, place, uid, username);
        }else {
   
            students =studentdao.listAllStudents();
        }
    %>
    
    <table>
        <tr>
            <td style="text-align:center">id</td>
            <td style="text-align:center">pwd</td>
            <td style="text-align:center">place</td>
            <td style="text-align:center">uid</td>
            <td style="text-align:center">username</td>
        </tr>
        <%
            for(int i = 0; i<students.size();i++){
            StudentBean student = students.get(i);
        %>
        <tr>
            <td style="text-align:center"><%=student.getId()%></td>
            <td style="text-align:center"><%=student.getPwd()%></td>
            <td style="text-align:center"><%=student.getPlace()%></td>
            <td style="text-align:center"><%=student.getUid()%></td>
            <td style="text-align:center"><%=student.getUsername()%></td>
        </tr>
        <%
            }
        %>
    </table>
  
</body>
</html>
