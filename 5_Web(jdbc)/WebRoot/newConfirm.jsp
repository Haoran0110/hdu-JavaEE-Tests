<%@ page import="bean.StudentBean" %>
<%@ page import="dao.StudentDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NewConfirm</title>
</head>
<body>
    <h3 style="text-align:center">Message</h3>
    <%
        request.setCharacterEncoding("utf-8");
        String pwd = request.getParameter("pwd");
        String place = request.getParameter("place");
        String uid = request.getParameter("uid");
        String username = request.getParameter("username");
        int sign = 0;
        StudentBean student = new StudentBean();
        student.setPwd(pwd);
        student.setPlace(place);
        student.setUid(uid);
        student.setUsername(username);

        StudentDao dao = new StudentDao();
        sign = dao.Add(student);
        if (sign == 1){
            out.println("<center>" + "添加学生成功" + "</center>" + "<br>");
        }
        else {
            out.println("<center>" + "添加学生失败" + "</center>" + "<br>");
        }
    %>

    <a style="text-align:center" href="list.jsp" id="forward">5秒后自动跳转，若没有跳转请点击</a>
</body>
</html>

<script>
    function jump() {
        var link = document.getElementById("forward");
        link.click();
    }
    setTimeout("jump()",5000);
</script>
