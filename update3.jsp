<html>
<body>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
String str=String.valueOf(session.getAttribute("key"));
 try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","simbi","simbi");
pst=conn.prepareStatement("update stureg set p_id=?,p_name=?,price=?,c_name=?,descp=?,pic=? where regno =?");
pst.setString(1,request.getParameter("u1"));
pst.setString(2,request.getParameter("u2"));
pst.setString(3,request.getParameter("u3"));
pst.setString(4,request.getParameter("u4"));
pst.setString(5,request.getParameter("u5"));
if((request.getParameter("f")).equals(""))
pst.setString(6,request.getParameter("f1"));
else
pst.setString(6,request.getParameter("f"));

pst.setString(7,str);

pst.executeUpdate();
%>
<br>
Record  updated
<%
conn.close();
pst.close();
}
catch(Exception k)
{
out.println(k);
}
%>