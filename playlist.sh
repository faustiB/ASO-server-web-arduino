#!/bin/bash
echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
<body>
	<h3>Your Playlist:</h3>
	$(sudo ls /var/www/cgi-bin/musica | sudo awk 'BEGIN{ print"<table>" }{ print"<tr><td>"$0"</td></tr>" } END { print"</table>"}')
	<br>
	<form action='music.sh'>
		<input type='submit' value='Music player'>
	</form>
</body>
</html>
"
