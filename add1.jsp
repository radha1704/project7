<html>
<body>
<form name="abc" method="Post" action="admin2.jsp">
<center>
<script>
k()
{
document.getElementById("p").src=f.value;
}
</script>



<table cellspacing="5" cellpading="5">
<tr>
<td><font face="Colonna MT" color="#bhrf98">PRODUCT ID</font></td>
<td><input type="text" name="a"></td>
</tr>

<tr>
<td><font face="Colonna MT" color="#bhrf98" >PRODUCT NAME</font></td>
<td><input type="text" name="b"></td>
</tr>
<tr>
<td><font face="Colonna MT" color="#bhrf98" >PRICE</font></td>
<td><input type="text" name="c"></td>
</tr>
<tr>
<td><font face="Colonna MT" color="#bhrf98" >MANUFACTURING COMPANY NAME</font></td>
<td><input type="text" name="d"></td>
</tr>
<tr>
<td><font face="Colonna MT" color="#bhrf98" >DESCRIPTION</font></td>
<td><textarea name="e"></textarea></td>
</tr>
<tr>
<td><font face="Colonna MT" color="#bhrf98" >IMAGE</font></td>
<td><input type="file" id="f" name="f" onchange="k()"><img src="" id="p"></td>
</tr>

<tr>
<td><input type="submit" value="add"></td><td><input type="reset"></td>
</tr>
</table>

</form>
</body>
</html>

