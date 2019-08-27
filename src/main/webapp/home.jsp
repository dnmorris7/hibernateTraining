<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}</script>
<body>

<form action="addAlien">
<input type = "text" name="aid" onkeypress="return isNumberKey(event)"/><br>
<input type = "text" name="name"><br>
<input type = "submit" value="Add Alien"><br>
</form>
<br>

<form action="showAlien">
<input type = "number" name="aid" onkeypress="return isNumberKey(event)" /><br>

<input type = "submit" value="Get Alien"><br>
</form>


</body>
</html>