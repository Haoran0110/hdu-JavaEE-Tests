<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>  
  <body>
    <s:form action="login">
    	<s:textfield name="persona.name" label="用户名"></s:textfield>
    	<s:password name="persona.password" label="密码"></s:password>
   	    <s:submit value="登录"></s:submit>
    <!-- 超链接跳转到action -->
    </s:form>
    <a href="register.jsp">注册</a>
  </body> 
</html>