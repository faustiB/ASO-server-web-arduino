#!/bin/bash

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3>Showing you the syslog of the system</h3>
	$(sudo cat /var/log/syslog | tail -n 30)
	<br>
	
	<h3>Showing you the messages of the system</h3>
	$(sudo cat /var/log/messages | tail -n 30)
	<br>
	<br>

	<form action='receiveLogin.sh'>	
		<input type='submit' value='Main menu'>
	</form>
	</body>
</html>
"
