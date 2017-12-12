/**
 * 
 */
		//用户名：  
        var usernameRegex = /^\w{6,12}$/;  
        var usernameRegex = /^[A-Za-z]/;
        //密码：  
        var passwordRegex = /^\w{6,12}$/;  
        //邮箱：  
        var emailRegex = /^\w+@\w+(\.\w+)+$/;     
        
        function validateForm(){ //定义validateForm方法用于客户端校验   
            //校验用户名  
            var usernameNode = getElementById("username"); //获得ID值为username的节点对象  
            var username = usernameNode.value;   //获得usernameNode节点的值，即用户在username文本框内填写的值  
            if(!usernameRegex.test(username)){    //验证获得到的值是否符合正则表达式  
                alert("用户名不符合规定！");
                return false;
            }               
            //校验密码  
            var passwordNode = getElementById("password1");  //获得ID值为password的节点对象  
            var password = passwordNode.value;  
            if(!passwordRegex.test(password)){  
                byId("password1_span").style.color = "red";  
                flag = false;  
            }  

            //确认密码  

            var rePasswordNode = getElementById("password2");  //获得ID值为rePassword的节点对象  
            var rePassword = rePasswordNode.value;  
            if(!password==rePassword){  
                byId("password2_span").style.color = "red";  
                flag = false;  
            }else if(!passwordRegex.test(rePassword)){  
                byId("password2_span").style.color = "red";  
                flag = false;  
            }else{  
                byId("password2_span").style.color = "green";  
            }  
              
            //校验邮箱  
            var emailNode = getElementById("email");  //获得ID值为Email的节点对象  
            var email = emailNode.value;  
            if(!emailRegex.test(email)){  
                byId("email_span").style.color = "red";  
                flag = false;  
            }  
            return flag;  
            }           
        function byId(id){  //自定义方法，用于获取传递过来的ID值对应的节点对象  
            return document.getElementById(id);  
        }  