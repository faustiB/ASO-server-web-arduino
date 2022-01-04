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
	<p>	
	$(ps aux)	
	</p>
	<h3>Search by PID</h3>
		<form action='pid.sh' method='post' ENCTYPE='text/plain'>
			PID: <input type='text' name='PID' size='5'>
			<input type='submit' value='Submit' name='parametrePOST'>
		</form>
	<h3>Kill Process</h3>
		<form action='killprocess.sh' method='post' ENCTYPE='text/plain'>
			PID: <input type='text' name='PID' size='5'>
			<input type='submit' value='Submit' name='parametrePOST'>
		</form>
	</body>
</html>
"
