#!/bin/bash

read PID
pid=$PID

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3>Search by PID result</h3>
	<p>
	PID is: $pid
	</p>
	<br>
	<br>
        <form action='receiveLogin.sh'>
        <input type='submit' value='Main menu'>
        </form>
	</body>
</html>
"
