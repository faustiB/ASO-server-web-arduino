#!/bin/bash
echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3>Show crontab daily entries</h3>
	$(sudo ls -la /etc/cron.daily | sudo awk 'BEGIN{ print"<table>" }{ print"<tr><td>"$0"</td></tr>" } END { print"</table>"}')
	$(sudo logger -i Entered to the cron show)
	<h3>Add new daily task</h3>
	<form action='newCron.sh' method='post'>
		Input command: <input type='text' name='cron' size='40'>
		<input type='submit' value='Submit' name='cron'>
	</form>
		
	</body>
</html>
"
