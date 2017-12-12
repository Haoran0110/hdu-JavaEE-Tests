<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'display.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
<%
String checkValue[]=request.getParameterValues("box");
for(int i=0;i<checkValue.length;i++){
	if(checkValue[i]!=null){
		session.setAttribute("box",checkValue[i]);
		String th=(String) session.getAttribute("box");
		th=new String(th.getBytes("ISO-8859-1"));
		out.print(th);
	}
}
%>
  <body>
  
  </body>
</html>
