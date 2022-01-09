#!/bin/bash
echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
<body>
	<h3>Playing song</h3>
	
	$(sudo mpg123 piano.mp3)
	<form action='music.sh'>
		<input type='submit' value='Music player'>
	</form>
</body>
</html>
"
$(sudo logger -i Song is being played )
