#!/bin/bash

read pid
pid=${pid::-1}
pidok=$(echo "$pid" | awk -F= '{print $2}')

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3>Search by PID result</h3>
	"
echo -e "PID is: $pidok <br>"
"
	"
	result=$(echo $(sudo ps aux | grep $pidok)
	$(sudo logger -i process $pidok is being shown))

echo -e "The result is:<br> $result
	
        <form action='receiveLogin.sh'>
        <br>
	<input type='submit' value='Main menu'>
        </form>
	</body>
</html>
"
