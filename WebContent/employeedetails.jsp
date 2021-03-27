<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<%
	Employee Em = (Employee)session.getAttribute("account");
		if(Em==null){
			response.sendRedirect("login.jsp?err=timeout");
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="_header.jsp"></jsp:include>
	<div align="center">
		<h1>User successfully registered!</h1>
		<a href="login.jsp">Login</a>
	</div>
</body>
</html>