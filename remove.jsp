<html>
<body>

<center>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<% Connection conn;
PreparedStatement pst;
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","simbi","simbi");

pst=conn.prepareStatement("delete  from cart where username=? and password=? and p_id=?");

pst.setString(1,String.valueOf(session.getAttribute("user")));
pst.setString(2,String.valueOf(session.getAttribute("pass")));
pst.setString(3,request.getParameter("id"));
pst.executeUpdate();


conn.close();
pst.close();
response.sendRedirect("showcart.jsp");
}
catch(Exception k)
{
out.println(k);
}
%>

