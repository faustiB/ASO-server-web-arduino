#!/bin/bash

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3>IP Tables</h3>
	$(sudo iptables -L -v -n | more  | sudo awk 'BEGIN{ print"<table>" }{ print"<tr><td>"$0"</td></tr>" } END { print"</table>"}')
	$(sudo logger -i Entered to the IP tables show.) 
	<br>
	<form action='receiveLogin.sh'>
	<input type='submit' value='Main Menu'>
	</form>
	</body>
</html>
"

