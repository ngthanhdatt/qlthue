<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<%
if (request.getParameter("logout") != null) {  
    session.invalidate();
    response.sendRedirect("login.jsp");
    return; 
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<div align="center">
		<h1>Homepage</h1>
		<a href="login.jsp">Login</a>
		<br>
		<a href="employeeregister.jsp">Sinup</a>
	</div>
</body>
</body>
</html>