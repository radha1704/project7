<html>
<body>
<h3><u>LIST OF STUDENT'S RECORD </u>
</h3>
<table border="1">
 <%@ page language= "java" %>
 <%@ page import = "java.sql.*" %>
<% 
Connection conn;
   PreparedStatement pst;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","simbi","simbi");
pst=conn.prepareStatement("select * from product");
ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>


<td><img src='<%=rs.getString(6)%>' height="120" width="100"></td>

</tr>
<%
}
conn.close();
pst.close();
}
catch(Exception k)
{
out.println(k);
}

%>
</table>
</body>
</html>
