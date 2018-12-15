<html>
<body>
<center>
<form name="yugjgu" method="Post" action="delete1.jsp">
<h3><u> delete product from list </u></h3>
<br>
<table>
<tr>
<td>Select PRODUCT ID U Want To Delete</td>
<td><select name ="a">
	<option>select the product id</option>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<% Connection conn;
PreparedStatement pst;
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","simbi","simbi");
pst=conn.prepareStatement("select * from product");
ResultSet rs = pst.executeQuery();
while(rs.next())
{
%>
<option><%=rs.getString(1)%></option>
<%
}
conn.close();
pst.close();
}catch(Exception ex)
{out.println(ex);
}
%>
</select>
</td>
</tr>
<tr>
<td><input type="submit" value="delete"></td>
<td><input type ="reset"></td>
</tr>
</center>
</table>
</form>
</body>
</html>
