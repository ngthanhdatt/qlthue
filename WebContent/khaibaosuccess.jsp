<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList,java.sql.Connection,java.sql.CallableStatement,java.sql.ResultSet,dao.*,model.*"%>
<%
	Employee Em = (Employee)session.getAttribute("account");
		if(Em==null){
			response.sendRedirect("login.jsp?err=timeout");
		}
%>
<html>
<head>
	
		<title>JSP:Insert, Update, Delete using MySQL</title>
		
		<!--css for div main class and table -->
		<style type="text/css">
		
		.main
		{
			width:700px;;
			margin-left:250px;
			padding: 10px;
			border: 5px solid grey;
			
		}
		table
		{
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 600px;
		}
		td
		{
			border: 5px solid silver;
			text-align: center;
			padding: 8px;
		}
		</style>
		
		
	</head>	
	<body>
	<div align="center">
	<h2>You have logined successfully</h2>
	<table style="with: 80%">
		<tr>
		<th>ID</th>
		<th>Ma so thue</th>
		<th>Date</th>
		<th>Thu thap ca nhan</th>
		<th>So nguoi phu thuoc</th>
		<th>Tien thue</th>
		</tr>
	<%
	try
{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/qlthue?allowPublicKeyRetrieval=true&useSSL=false","root","datnguyen1301");
		CallableStatement cs = con.prepareCall("select * from bill where maSoThue = " + session.getAttribute("mst"));
		
		ResultSet rs = cs.executeQuery();
		while(rs.next())
		{
			%>
			<tr>
		     <td> <%=rs.getString("idBill") %></td>
		     <td> <%=rs.getString("maSoThue")%></td>

		     <td><%=rs.getString("date")%></td>

		     <td><%=rs.getString("luong")%></td>

		     <td><%=rs.getString("songuoi")%></td>

		     <td><%=rs.getString("tienthue")%></td>
		     <td> <a href="dongthue.jsp?ID=<%=rs.getString("idBill") %>">Dong Thue</a></td>
		    </tr>
		    <%
		}
}catch(Exception e){
	out.print(e);
}
%>
	</table>
	</div>
	</body>
</html>
