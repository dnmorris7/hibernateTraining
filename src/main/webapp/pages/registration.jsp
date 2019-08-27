<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>AWS Example Domain</title>
<script language="JavaScript">
<!--
	var nHist = window.history.length;
	if (window.history[nHist] != window.location)
		window.history.forward();
//-->
</script>
<script>
	function isNumeric(value) {
		if (value == "" || value == null
				|| !value.toString().match(/^[-]?\d*\.?\d*$/)) {
			return false;
		}
		return true;
	}
	function echeck(str) {
		var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
		return emailPattern.test(str);
	}
	function validateForm() {
		var aname = document.forms["regform"]["ANAME"].value;
		var pwd = document.forms["regform"]["PASSWORD"].value;
		var cpwd = document.forms["regform"]["CPASSWORD"].value;
		var email = document.forms["regform"]["EMAIL"].value;
	}
	if (aname == null || fname == "") {
		alert("Please provide Firstname");
		return false;
	}
	if (pwd == null || pwd == "") {
		alert("Please provide password");
		return false;
	}
	if (cpwd == null || cpwd == "") {
		alert("Please confirm password");
		return false;
	}
	if (email == null || email == "") {
		alert("Please provide Email");
		return false;
	}
	if (echeck(email)==false){
		alert("Invalid EmailID");
		return false;
	}
	}
	function cancelRegistration()
	{
		history.go(-1);
	}
	
</script>
<meta charset="utf-8">
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
body {
	background-color: #f0f0f2;
	margin: 0;
	padding: 0;
	font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
}

h2 {
	background-color: #f0f0f2;
	color: #800080;
	margin: 0;
	padding: 0;
	font-size: 7pt;
	font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
}

div {
	width: 600px;
	margin: 5em auto;
	padding: 50px;
	background-color: #fff;
	border-radius: 1em;
}

a:link, a:visited {
	color: #38488f;
	text-decoration: none;
}

@media ( max-width : 700px) {
	body {
		background-color: #fff;
	}
	div {
		width: auto;
		margin: 0 auto;
		border-radius: 0;
		padding: 1em;
	}
}
</style>
</head>

<body>
	<div>


		<table>

			<tc width="600px" id="media" align="right"> <a
				href="<jstlcore:url value="/index.jsp"/>"> Login_Page </a> </tc>
			<tc>
			<h1>David's AWS Registration</h1>
			</tc>
		</table>



		<img height="50" width="200"
			src="src/main/resources/static/images/aws_underlineLogo.png"
			alt="Amazon Web Services"> </img> <img height="50" width="200"
			src="/images/aws_underlineLogo.png" alt="Amazon Web Services">
		</img>
		<p>Please Register Below.</p>

<form action="newAlien" name="regform" method="post" onsubmit="return validateForm()">
		<table>
			<tbody>
				<td align="center" colspan="2">
				<tr>
					<td><span
						style="font-weight: bold; color: red; font-size: 15px;">*</span>
						Alien Name:</td>
					<td><input type="text" name="ANAME" size="25"></input></td>

				</tr>

				<tr>
					<td><span
						style="font-weight: bold; color: red; font-size: 15px;">*</span>
						Password:</td>
					<td><input type="password" name="PASSWORD" size="27"></input></td>

				</tr>




				<tr>
					<td><span
						style="font-weight: bold; color: red; font-size: 15px;">*</span>
						Confirm Password:</td>
					<td><input type="password" name="CPASSWORD" size="27"></input></td>

				</tr>
				<tr>
					<td><span
						style="font-weight: bold; color: red; font-size: 15px;">*</span>
						Email:</td>
					<td><input type="text" name="EMAIL" size="25"></input></td>

				</tr>

				<tr>
					<td colspan="2" align="right"><input value="Register"
						type="submit"> <input value="Clear" type="reset"></td>
				</tr>
				<tr>

				</tr>
				
		</table>
<tr><td colspan="4" align="center"><div style="font-size: 15px; color: red; font-weight: bold;">${REGISTRATIONSTATUSMESSAGE}</td></tr>
	</div>
	
</body>

</html>
