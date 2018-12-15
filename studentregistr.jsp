<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","simbi","simbi");
pst=conn.prepareStatement("insert into shopreg values(?,?,?,?,?,?,?,?)");
pst.setString(1,request.getParameter("t"));
pst.setString(2,request.getParameter("n"));
pst.setString(3,request.getParameter("e"));
pst.setString(4,request.getParameter("m"));
pst.setString(5,request.getParameter("p"));
pst.setString(6,request.getParameter("d"));
pst.setString(7,request.getParameter("c"));
pst.setString(8,request.getParameter("g"));
pst.executeUpdate();
out.println("DATA SAVE");
conn.close();
pst.close();
}
catch(Exception k)
{
out.println(k);
}

%>