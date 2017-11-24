<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.acring.util.DBHelper"%>
<jsp:useBean id="student" scope="request" class="com.acring.pojo.Student"/>
<%@ page import="com.acring.pojo.Student"%>
<html>
<head>
	<title></title>
</head>
<body>
	<%
	DBHelper dbHelper = new DBHelper();

	request.setCharacterEncoding("UTF-8") ;
	student.setId(request.getParameter("id"));
	student.setPassword(request.getParameter("password"));
	if(!student.checkId() || !student.checkPassword()){ // 学号或密码格式有错
		%>
		<jsp:forward page="trylogin.jsp"/>
		<%
	}

	Student newStudent = dbHelper.login(student);  
	if(newStudent == null){  // 账号或密码不正确
		student.errorCode = 201;
		%>
		<jsp:forward page="trylogin.jsp"/>
		<%
	}else{
		student.setName(newStudent.getName());
		session.setAttribute("id", student.getId());
		student.errorCode = 200;
		%>
		<jsp:forward page="welcome.jsp"/>
		<%
	}
	%>		
</body>
</html>