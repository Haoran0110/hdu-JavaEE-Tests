<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'time.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<script language="javascript" type="text/javascript">  
    //�����ִ�кķ�ʱ��,����ʱ�䲢��ʮ��׼ȷ,����Լ��2000��������  
    var xmlHttp = false;  
    //��ȡ������ʱ��  
    try {  
        xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");  
    } catch (e) {  
        try {  
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");  
        } catch (e2) {  
            xmlHttp = false;  
        }  
    }  
  
    if (!xmlHttp && typeof XMLHttpRequest != 'undefined') {  
        xmlHttp = new XMLHttpRequest();  
    }  
  
    xmlHttp.open("GET", "null.txt", false);  
    xmlHttp.setRequestHeader("Range", "bytes=-1");  
    xmlHttp.send(null);  
  
    severtime = new Date(xmlHttp.getResponseHeader("Date"));  
  
    //��ȡ����������  
    var year = severtime.getFullYear();  
    var month = severtime.getMonth() + 1;  
    var date = severtime.getDate();  
    //��ȡ������ʱ��  
    var hour = severtime.getHours();  
    var minu = severtime.getMinutes();  
    var seco = severtime.getSeconds();  
    //��ȡ�ͻ���ʱ��  
    localtime = new Date();  
    //ȡ��ʱ���  
    var jtime = Math.abs(localtime.getTime() - severtime.getTime());  
    var jdate = jtime / (24 * 60 * 60 * 1000);  
    var jhour = jtime % (24 * 60 * 60 * 1000) / (60 * 60 * 1000);  
    var jminu = jtime % (24 * 60 * 60 * 1000) % (60 * 60 * 1000) / (60 * 1000);  
    var jsecond = jtime % (24 * 60 * 60 * 1000) % (60 * 60 * 1000)  
            % (60 * 1000) / 1000;  
  
    //��ʽ������ͻ���ʱ��  
    function getClientTime() {  
        localtime = new Date();  
        var cyear = localtime.getFullYear();  
        var cmonth = localtime.getMonth() + 1;  
        var cdate = localtime.getDate();  
        var chour = localtime.getHours();  
        var cminu = localtime.getMinutes();  
        var cseco = localtime.getSeconds();  
  
        ccyear = addZero(cyear);  
        ccmonth = addZero(cmonth);  
        ccdate = addZero(cdate);  
        cchour = addZero(chour);  
        ccminu = addZero(cminu);  
        ccseco = addZero(cseco);  
  
        cinnerdata = "��ǰ�ͻ���ʱ�䣺";  
        document.getElementById("clienttime").innerHTML = cinnerdata + ccyear  
                + "-" + ccmonth + "-" + ccdate + " " + cchour + ":" + ccminu  
                + ":" + ccseco;  
        document.getElementById('xctime').innerHTML = "ʱ����"  
                + Math.round(jdate) + "��" + Math.round(jhour) + "Сʱ"  
                + Math.round(jminu) + "����" + jsecond + "�� �ܼ�:" + jtime + "����";  
    }  
    //��ʽ�����������ʱ��  
    function getSeverTime() {  
        seco++;  
        if (seco == 60) {  
            minu += 1;  
            seco = 0;  
        }  
        if (minu == 60) {  
            hour += 1;  
            minu = 0;  
        }  
        if (hour == 24) {  
            date += 1;  
            hour = 0;  
        }  
        //���ڴ���  
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8  
                || month == 10 || month == 12) {  
            if (date == 32) {  
                date = 1;  
                month += 1;  
            }  
        } else if (month == 4 || month == 6 || month == 9 || month == 11) {  
            if (date == 31) {  
                date = 1;  
                month += 1;  
            }  
        } else if (month == 2) {  
            if (year % 4 == 0 && year % 100 != 0) {//���괦��  
                if (date == 29) {  
                    date = 1;  
                    month += 1;  
                }  
            } else {  
                if (date == 28) {  
                    date = 1;  
                    month += 1;  
                }  
            }  
        }  
        if (month == 13) {  
            year += 1;  
            month = 1;  
        }  
        sseco = addZero(seco);  
        sminu = addZero(minu);  
        shour = addZero(hour);  
        sdate = addZero(date);  
        smonth = addZero(month);  
        syear = year;  
  
        innerdata = "��ǰ������ʱ�䣺";  
        document.getElementById("servertime").innerHTML = innerdata + syear  
                + "-" + smonth + "-" + sdate + " " + shour + ":" + sminu + ":"  
                + sseco;  
        setTimeout("getSeverTime()", 1000);  
        setTimeout("getClientTime()", 100);  
    }  
  
    function addZero(num) {  
        num = Math.floor(num);  
        return ((num <= 9) ? ("0" + num) : num);  
    }  
</script>  
</head>  
<body onload="getSeverTime();">  
    <p id="servertime"></p>  
    <p id="clienttime"></p>  
    <p id="xctime"></p>  
</body>  
</html>  

