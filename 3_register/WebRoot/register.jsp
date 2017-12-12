<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
        <title>注册页面</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <script type="text/javascript" src="regCheck.js">
        
        </script>
    </head>

    <body>
        <form action="post.jsp" method="post">
            <table>
                <caption>
                    用户注册
                </caption>
                <tr>
                    <td align="right">
                        <sup>
                            <font color="red">*</font>
                        </sup>
                       <label>用户名</label>
                    </td>
                    <td>
                        <input type="text" name="username" id="username"
                            onblur="checkusername(this)" />
                        <span id="username_span">(用户名由6-10个字符组成,且开头必须是字母)</span>
                    </td>
                </tr>

                <tr>
                    <td align="right">
                        <sup>
                            <font color="red">*</font>
                        </sup>
                       <label>密码</label>
                    </td>
                    <td>
                        <input type="password" name="password1" id="password1"
                            onblur="checkpassword1(this)" />
                        <span id="password1_span">(请输入8-12位密码)</span>
                    </td>
                </tr>

                <tr>
                    <td align="right">
                        <sup>
                            <font color="red">*</font>
                        </sup>
                      <label>确认密码</label>
                    </td>
                    <td>
                        <input type="password" name="password2" id="password2"
                            class="input_class" onblur="checkpassword2(this)" />
                        
                    </td>
                </tr>

                <tr>
                    <td align="right">
                        Email：
                    </td>
                    <td>
                        <input type="text" name="email" id="email" class="input_class"
                            onblur="checkemail(this)" />
                        <span id="email_span">(格式示例：xxxxxxxx@xxx.com)</span>
                    </td>
                </tr>
                
                 <tr>
                    <td align="right">                        
                        性别：
                    </td>
                    <td>
                 		<select name="select"> 
							<option value="0">男</option> 
							<option value="1">女</option> 
					</select>                       
                    </td>
                </tr>
                
                <tr>
                    <td align="right">
                        电话号码：
                    </td>
                    <td>
                        <input type="text" name="phonenumber" id="phonenumber"
                            onblur="checkphonenumber(this)" />
                        <span id="phonenumber_span">(手机号码必须是11位)</span>
                    </td>
                </tr>
                
                <tr>
                    <td align="right">                        
                        贯籍：
                    </td>
                    <td>
                 		<select name="select"> 
							<option value="0">北京</option> 
							<option value="1">上海</option>
							<option value="2">广东</option> 
							<option value="3">浙江</option> 
							<option value="4">江苏</option> 
							<option value="5">辽宁</option> 
							<option value="6">甘肃</option> 
							<option value="7">陕西</option> 
							<option value="8">江西</option> 
							<option value="9">黑龙江</option> 
							<option value="10">四川</option> 
							<option value="11">重庆</option> 
							<option value="12">天津</option> 
							<option value="13">河北</option>
							<option value="14">安徽</option> 
							<option value="15">内蒙古自治区</option> 
							<option value="16">新疆维吾尔族自治区</option> 
							<option value="17">宁夏回族自治区</option>    
					</select>                       
                    </td>
                </tr>
                
                <tr>
                    <td align="right">
                        身高：
                    </td>
                    <td>
                        <input type="text" name="high" id="high"
                            onblur="high(this)" />
                    </td>
                </tr>
                                               
                <tr>
                    <td align="right">                        
                        爱好：
                    </td>
                    <td>
                        <input type="text" name="hobby" id="hobby"
                            onblur="hobby(this)" />                        
                    </td>
                </tr>
                
                <tr>
                    <td align="right">                        
                        个人介绍：
                    </td>
                    <td>
                        <input type="text" name="intro" id="intro"
                            onblur="intro(this)" />                        
                    </td>
                </tr>


                <tr>
                    <td align="center" colspan="2">
                        <!-- 合并两列 -->
                        <input type="submit" class="aaa" value="注册" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

