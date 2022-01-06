#!/bin/bash

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3>Last 10 access</h3>
	<br>
	$(sudo awk 'BEGIN{ print"<table>" }{ print"<tr><td>"$0"</td></tr>" } END { print"</table>"}' /var/log/apache2/access.log.1)
	<br>
	<form action='receiveLogin.sh'>
	<input type='submit' value='Main Menu'>
	</form>
	</body>
</html>
"

#	$(sudo top)
#	$(sudo cat /var/log/apache2/access.log.1 | tail ) 
