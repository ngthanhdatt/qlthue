<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>You have logined successfully</h1>
		<p>Username :<strong><%=session.getAttribute("user") %></strong> </p>
		<p>Ma so thue :<strong><%=session.getAttribute("mst") %></strong> </p>
		<form action="khaibaothue.jsp " method="post">
     		<input type="submit" value="Khai báo thuế">
    	</form>
    	<form action="listBill.jsp" method="post">
     		<input type="submit" value="Danh sách đã khai báo">
    	</form>
    	<form action="logout.jsp" method="post">
     		<input type="submit" value="Đăng xuất"> 
    	</form>
		<!--<a href="khaibaothue.jsp">Khai bao thue</a>
		<br>
		<a href="listBill.jsp">danh sach da khai bao thue</a>
		<br>
		<a href="home.jsp">Logout</a>-->
	</div>
</body>
</html>