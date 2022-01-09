#!/bin/bash

read cron 
cronOk=$(echo "$cron" | awk -F= '{print $2}')

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3>Scheduling new task</h3>
	<p>
	The command is: $cronOk
        </p>
        <form action='receiveLogin.sh'>
        	<input type='submit' value='Main menu'>
        </form>
	</body>
</html>
"
$(sudo crontab -l > mycron)
$(sudo echo $cronOk >> mycron)
$(sudo crontab mycron)
$(sudo rm mycron)

