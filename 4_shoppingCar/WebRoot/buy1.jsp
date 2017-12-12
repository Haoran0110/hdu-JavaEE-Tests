<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buy1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

<body>
<p>
	各种肉类大甩卖，一律五块：
</p>
    <form action="display.jsp" method="post">
    <input type="checkbox" value="牛肉" name="box" id="beef" />
    <label>牛肉</label>
    <br>
    <input type="checkbox" value="猪肉" name="box" id="pork" />
    <label>猪肉</label>
    <br>
    <input type="checkbox" value="羊肉" name="box" id="sheep" />
    <label>羊肉</label>
    <br>
    <input type="submit" value="提交">
    <input type="reset" value="全部重写">
    <a href="buy2.jsp" id="buy">买点别的</a>
    <a href="display.jsp" id="cart">查看购物车</a>
    </form>
  </body>
</html>
