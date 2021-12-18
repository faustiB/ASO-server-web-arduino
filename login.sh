#!/bin/bash

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
	"http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<title> Fase 2 </title>
	</head>
	<body>
	"
echo -e '
	<form action="rebrePOST.sh" method="post" ENCTYPE="text/plain"> 
	User: <input type="text" name="user" size="20">
	<br/>
	Password: <input type="password" name="password" size="20">
	<br/>
        <input type="submit" value="submit">
        <input type="reset" value="reset">
        </form>
    	</body>
</html>
	'

