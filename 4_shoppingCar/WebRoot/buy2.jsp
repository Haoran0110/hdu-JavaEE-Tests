<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buy2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
<p>
	各种球类大甩卖，一律八块：
</p>
    <form action="display.jsp" method="post">
    <input type="checkbox" value="篮球" name="box" id="basketball" />
    <label>篮球</label>
    <br>
    <input type="checkbox" value="排球" name="box" id="volleyball" />
    <label>排球</label>
    <br>
    <input type="checkbox" value="足球" name="box" id="football" />
    <label>足球</label>
    <br>
    <input type="submit" value="提交">
    <input type="reset" value="全部重写">
    <a href="buy1.jsp" id="buy">买点别的</a>
    <a href="display.jsp" id="cart">查看购物车</a>
    </form>
</html>
