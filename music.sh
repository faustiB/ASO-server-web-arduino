#!/bin/bash

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
<body>

	<h3>Music Player</h3>
		
	<form action='playMusic.sh'>
		Press to play: <input type='submit' value='Play'>
	</form>
	<form action='shuffleMusic.sh'>
		Press to shuffle: <input type='submit' value='Shuffle'>
	</form>
	<form action='playlist.sh'>
		Press to see playlist: <input type='submit' value='Playlist'>
	</form>
	<form action='loop.sh'>
		Press to loop: <input type='submit' value='Loop'>
	</form>
	<form action='receiveLogin.sh'>
		 <input type='submit' value='Main menu'>
	</form>
</body>
</html>
"
