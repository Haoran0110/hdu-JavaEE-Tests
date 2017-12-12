<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'week.jsp' starting page</title>
   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
<%
response.setIntHeader("Refresh",1);
Calendar calendar = new GregorianCalendar();
String am_pm;
int week = calendar.get(Calendar.DAY_OF_WEEK);
int trueweek = week - 1;
int hour = calendar.get(Calendar.HOUR);
int minute = calendar.get(Calendar.MINUTE);
int second = calendar.get(Calendar.SECOND);
if(calendar.get(Calendar.AM_PM) == 0){
am_pm = "上午";
}else{
am_pm = "下午";
}
String CT ="星期" + trueweek + " " + am_pm +" " + hour + ":" + minute + ":" + second;
out.println("今天是" + CT);
%>
  </body>
</html>


