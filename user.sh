#!/bin/bash
read user

username=${user::-1}
usernameok=$(echo "$username" | awk -F= '{print $2}')

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
</head>
<body>"
echo -e "el valor de user es: $usernameok"
"
	<h3>Create new user</h3>
        $(sudo useradd $usernameok)
	
	<form action='receiveLogin.sh'>
		<input type='submit' value='Main menu'>
	</form>
</body>
</html>
"
