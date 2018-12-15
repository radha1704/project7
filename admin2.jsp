
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst,pst1;
int c=0;
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","simbi","simbi");
pst=conn.prepareStatement("insert into product values(?,?,?,?,?,?)");
pst1=conn.prepareStatement("select *from product");
ResultSet rs= pst1.executeQuery();
while(rs.next())
c++;
pst.setString(1,"a"+(c+1));
pst.setString(2,request.getParameter("b"));
pst.setString(3,request.getParameter("c"));
pst.setString(4,request.getParameter("d"));
pst.setString(5,request.getParameter("e"));
pst.setString(6,request.getParameter("f"));
pst.executeUpdate();
out.println("DATA ADDED");
conn.close();
pst1.close();
pst.close();

}
catch(Exception k)
{
out.println(k);
}

%>