<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>My JSP 'post.jsp' starting page</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
<%  String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String password2 = request.getParameter("password2");
    String email = request.getParameter("email");
    String sex = request.getParameter("sex"); 
    String phonenumber = request.getParameter("phonenumber");
    String place = request.getParameter("place");    
    String high = request.getParameter("high"); 
    String hobby = request.getParameter("hobby");
    String intro = request.getParameter("intro");   
        out.print("注册成功"+ "<br>");
        out.print("用户名：" + username +"<br>" );
        out.print("密码：" + password+"<br>");
        out.print("邮箱：" + email +"<br>");
        out.print("性别：" + sex+"<br>");
        out.print("电话号码：" + phonenumber+"<br>" );
        out.print("籍贯：" + place+"<br>");
        out.print("身高：" + high +"<br>");
        out.print("爱好：" + hobby+"<br>");
        out.print("个人介绍："+intro+"<br>");


    %>
<body>
</body>
</html>