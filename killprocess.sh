#!/bin/bash

read matar 
matar=${matar::-1}
matarok=$(echo "$matar" | awk -F= '{print $2}')

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3>Process Killed!</h3>
	<p>
	The PID is: $matarok
        </p>
	$(sudo kill -9 $matarok)
	$(sudo logger -i $matarok has been killed)
        <form action='receiveLogin.sh'>
        	<input type='submit' value='Main menu'>
        </form>
	</body>
</html>
"
