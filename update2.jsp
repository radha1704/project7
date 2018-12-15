<html>
<body>
<table>
<form  name="xyz" method="Post" action ="update3.jsp">.
<h3> update the information</h3>

<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
 	Connection conn;
 	PreparedStatement pst;
session.setAttribute("key",request.getParameter("a"));
String img="";
try
{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 conn= DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","simbi","simbi");
 pst = conn.prepareStatement("select * from product where p_id = ?");
 pst.setString(1,request.getParameter("a")); 
 ResultSet rs= pst.executeQuery();
while(rs.next())
{

img=rs.getString(6);
%>
<br>

<tr>
<td>

<img src='<%=img%>'><br>
<input type ="hidden" name="f1" value=<%=img%>>
<input type="file" name="f"></td></tr><br>

<tr>
<td>PRODUCT NAME :</td><td><input type="text" name="u1" value="<%=rs.getString(1) %>"></td></tr><br>
<tr><td>PRODUCT ID :</td><td><input type="text" name="u2" value="<%=rs.getString(2) %>"></td></tr><br>
<tr><td>PRICE:</td><td><input type="text" name="u3" value="<%=rs.getString(3) %>"></td></tr><br>
<tr><td>MANUFACTURING COMPANY NAME :</td><td><input type="text" name="u4" value="<%=rs.getString(4) %>"></td></tr><br>
<tr><td>DESCPRITION:</td><td><input type="text" name="u5" value="<%=rs.getString(5) %>"></td></tr><br>
<%
}
conn.close();
pst.close();
}
catch(Exception ex)
{out.println(ex);
}
%>
<br><tr><td><input type="submit" value="update"></td></tr>
</table>
</form>
</body>
</html>