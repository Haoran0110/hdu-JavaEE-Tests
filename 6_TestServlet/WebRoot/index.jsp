<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
<head>  
<base href="<%=basePath%>">  
  
<title>My JSP 'index.jsp' starting page</title>  
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
    <h1>学生信息</h1>  
    <table border="1px" height="10px" width="500px">  
        <tr>  
            <th>id</th>  
            <th>姓名</th>  
            <th>学号</th>  
        </tr>  
        <c:forEach items="${ulist }" var="data">  
            <tr>  
                <td>${data.id }</td>  
                <td>${data.name }</td>  
                <td>${data.sid }</td>                
            </tr>  
        </c:forEach>  
    </table>  
      
<a href="add.jsp">新增学生</a>  
</body>  
</html>  