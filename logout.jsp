<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head><title>JSP内置对象――Session对象</title></head>
<body>
<%
	response.setHeader("refresh","1;URL=main.jsp") ;
	session.invalidate() ;	// 注销，表示当前的session失效
%>
<h3>您已成功退出本系统，两秒后跳转回首页！</h3>
<h3>如果没有跳转，请按<a href="main.jsp">这里</a>！</h3>
</body>
</html>