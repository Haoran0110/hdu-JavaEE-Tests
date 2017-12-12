<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New</title>
</head>
<body>
    
        <h3>添加信息</h3>
    <form action="newConfirm.jsp" method="post">
        <p><span style="display:inline-block;width:80px;text-align:right;">id:</span> <input name="id" type="text"></p>
        <p><span style="display:inline-block;width:80px;text-align:right;">pwd:</span> <input name="pwd" type="text"></p>
        <p><span style="display:inline-block;width:80px;text-align:right;">place:</span> <input name="place" type="text"></p>
        <p><span style="display:inline-block;width:80px;text-align:right;">uid:</span> <input name="uid" type="text"></p>
        <p><span style="display:inline-block;width:80px;text-align:right;">username:</span> <input name="username" type="text"></p>
        <input type="submit" value="添加" onclick="check()">&nbsp;&nbsp;&nbsp;
        <input type="reset" value="重置">
    </form>
    
</body>
</html>

<script >
    function check() {
        var pwd = document.getElementById('pwd');
        var place = document.getElementById('place');
        var uid = document.getElementById('uid');
        var username = document.getElementById('username');
        if ("" == pwd.value) {
            alert("pwd is null");
            event.preventDefault();
            return false;
        }
        if ("" == place.value) {
            alert("place is null");
            event.preventDefault();
            return false;
        }
        if ("" == uid.value) {
            alert("uid is null");
            event.preventDefault();
            return false;
        }
        if ("" == username.value) {
            alert("username is null");
            event.preventDefault();
            return false;
        }
        else {
            return true;
        }
    }
</script>
