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

pst=conn.prepareStatement("delete  from product where p_id=?");
pst.setString(1,request.getParameter("a"));
pst.executeUpdate();
%>
<br>
registration no : <%=request.getParameter("a")%>deleted
<%
conn.close();
pst.close();
}
catch(Exception k)
{
out.println(k);
}
%>

