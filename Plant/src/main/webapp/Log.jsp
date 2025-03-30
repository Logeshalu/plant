<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
table{
background-color:pink;
color:blue;
margin:auto;
padding:50px;
}
td{
color:black;
}
h1{
color:red;
}
</style>
</head>
<body>
<div align=center>
<h1>LOGIN USER</h1>
</div>
<form action="Logi" method=post>
<table>
<tr><td>Enter name :</td><td><input type="text" name="txtname"></td></tr>
<tr><td>Password :</td><td><input type="pass" name="txtpass"></td></tr>
<tr><td><input type=submit value="Login"></td><td><input type=reset></td></tr>
</table>
</form>
</body>
</html>