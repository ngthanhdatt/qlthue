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
		<h1>You have logined successfully</h1>
		<p>Username :<strong><%=session.getAttribute("user") %></strong> </p>
		<p>Ma so thue :<strong><%=session.getAttribute("mst") %></strong> </p>
		<a href="khaibaothue.jsp">Khai bao thue</a>
		<br>
		<a href="listBill.jsp">danh sach da khai bao thue</a>
		<br>
		<a href="employeeregister.jsp">Sinup</a>
		
	</div>
</body>
</html>