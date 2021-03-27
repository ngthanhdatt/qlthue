<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Employee Em = (Employee)session.getAttribute("account");
		if(Em==null){
			response.sendRedirect("login.jsp?err=timeout");
		}
%>
<div align="center">
  <h1>Khai Bao Thue</h1>
  <form action="<%= request.getContextPath() %>/khaibao" method="post">
   <table style="with: 80%">
    <tr>
     <td>Ma So Thue</td>
     <td><input type="text" name="mst" value="<%=session.getAttribute("mst")%>" disabled /></td>
    </tr>
    <tr>
     <td>Date</td>
     <td><input type="text" name="date" /></td>
    </tr>
    <tr>
     <td>Thu Nhap Ca Nhan</td>
     <td><input type="text" name="luong" /></td>
    </tr>
    <tr>
     <td>So nguoi phu thuoc</td>
     <td><input type="text" name="songuoi" /></td>
    </tr>

   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>