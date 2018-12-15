<html>
<body>
<center>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<% 
	Connection conn;
	PreparedStatement pst;
String pay=String.valueOf(session.getAttribute("ke"));


try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","simbi","simbi");
pst=conn.prepareStatement("select * from bank where bank_name=? and card_no=?" );
pst.setString(1,request.getParameter("b"));
pst.setString(2,request.getParameter("cno"));

ResultSet rs=pst.executeQuery();
if(rs.next())
{
  
if(Integer.parseInt(rs.getString(2))>=Integer.parseInt(pay))
{
	out.println("\n\nTRANSACTION DONE\n");

	pst=conn.prepareStatement("update bank set balance=balance-? where card_no=?");
	pst.setString(1,pay);
	pst.setString(2,request.getParameter("cno"));
	pst.executeUpdate();
	out.println("balance will be updated");
}else{

	out.println("\n\ninsufficient balance");
}

}
else
out.println("Invalid Details");

conn.close();
pst.close();
}
catch(Exception k)
{
out.println(k);
}
%> 




