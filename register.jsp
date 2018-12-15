<html>
<body>

<form name="hf" method="Post" onsubmit="return valid()" action="register1.jsp">
<script>
function valid()
{   var c = 0;
	if(n1.value=="")
	{
	document.getElementById("k1").innerHTML="FILL THE NAME FIRST";return false;
	}
	else
	document.getElementById("k1").innerHTML="";
	

str=n2.value;
c1=str.indexOf("@");
c2=str.indexOf(".com");
 if(c1==-1 ||c2== -1)
{document.getElementById("k2").innerHTML="INVALID EMAIL ID";
	return false;
}
else
document.getElementById("k2").innerHTML="";

num=parseInt(n3.value);
for(i=num;i>0;i=Math.floor(i/10))
c++;

if(c!=10)
{document.getElementById("k3").innerHTML="INVALID MOBILE NUMBER";
	return false;
}
else
document.getElementById("k3").innerHTML="";

}
</script>


<h1> <centre><b><u><marquee scrollamount="40" behavior="alternate"><font face="Courier New" color="#ty65ef">ONLINE SHOPPING REGISTRATION FORM</font></marquee></u></b></centre></h1>
<hr>


<center>
<table height="500" width="700">
<tr>
<td>TITLE</td>
<td><SELECT NAME="t">
	<OPTION>MR.</OPTION><OPTION>MRS.</OPTION><OPTION>MISS</OPTION><OPTION>--</OPTION></SELECT>

	</td>
</tr> 

<tr>
<td>NAME<font color="red">*</font></td></td>
<td><input type="text" name="n" id="n1"><font color="red" id="k1"</font></td>
</tr>
<tr>
<td>EMAIL ID</td>
<td><input type="text" name ="e"id="n2"><font color="red" id="k2"</font></td>
</tr>
<tr>
<td>MOBILE NO</td>
<td><input type="number" name="m" id="n3"><font color="red" id="k3"></font></td>
</tr>

<tr>
<td>PASSWORD</td>
<td><input type="text" name="p"></td>
</tr>
<tr>
<td>DOB</td>
<td><input type="date" name="d" ></td>
</tr>
<tr>
<td>NATIONALITY</td>
<td><select name="c">
	<option>select</option>
	<option>indian</option>
	<option>islam</option>
	<option>--</option>
	<option></option></select></td>
</tr>
<tr>
<td>SELECT GENDER</td>
<td><input type="radio" name="g">M<input type="radio">F</td>
</tr>
<td><input type="submit" value="register" </td>
<td><input type ="reset" </td>
</tr>
</table>
</centre>
</form>
</body>
</html>