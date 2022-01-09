#!/bin/bash
echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	<h3> System process</h3>
	$(ps aux | sudo awk 'BEGIN{ print"<table>" }{ print"<tr><td>"$0"</td></tr>" } END { print"</table>"}')	
	$(sudo logger -i Entered monitorization on processes)
	<h3>Search by PID</h3>
		<form action='pid.sh' method='post' ENCTYPE='text/plain'>
			PID: <input type='number' name='pid' size='5'>
			<input type='submit' value='Submit' name='pid'>
		</form>
		
		<h3>Kill Process</h3>
		
		<form action='killprocess.sh' method='post' ENCTYPE='text/plain'>
			PID: 	<input type='number' name='matar' size='5'>
				<input type='submit' value='Submit' name='matar'>
		</form>
		<br><br>
		<form action='receiveLogin.sh'>
			<input type='submit' value='Main menu'>
		</form>
		<br>
	</body>
</html>
"
