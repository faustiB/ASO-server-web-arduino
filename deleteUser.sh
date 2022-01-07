#!/bin/bash
read delete

username=${delete::-1}
usernameok=$(echo "$username" | awk -F= '{print $2}')

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
</head>
<body>

	<h3>User deleted</h3>
	
	<form action='receiveLogin.sh'>
		<input type='submit' value='Main menu'>
	</form>
</body>
</html>
"
$(sudo userdel $usernameok)
