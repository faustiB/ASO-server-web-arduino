#!/bin/bash

read username
read password

username=${username::-1}
usernameOk=$(echo "$username" | awk -F= '{print $2}')

password=$(echo "$password")
passwordOk=$(echo "$password" | awk -F= '{print $2}')

echo Content-Type: text/html
echo

echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">"

"	
<html>
         <head>
               <title>Receive Login<title>
         </head>
<body>
"
  

$(sudo logger -i $usernameOk has entered the menu)

echo "<h3>MENU</h3>"
echo '
	<form action="reboot.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit" value="Reboot" name="parametreGET">
	</form>

	<form action="shutdown.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit" value="Shutdown" name="parametreGET">
	</form>

	<form action="gestionScript.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit" value="Gestion de procesos" name="parametreGET">
	</form>

	<form action="monitorScript.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit" value="Monitorizar" name="parametreGET">
	</form>

	<form action="log.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit"Logs" value="See logs" name="parametreGET">
	</form>

	<form action="cronScript.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit"Logs" value="Crontab" name="parametreGET">
	</form>

	<form action="music.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit"Logs" value="Music" name="parametreGET">
	</form>
	
	<form action="iptables.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit"Logs" value="Packet filtering" name="parametreGET">
	</form>

	<form action="user.sh" method="post" ENCTYPE="text/plain">
        	<h5>Introduce new user name</h5>
		Name: <input type="text" name="user" size="20"> 
		<input type="submit" value="Crear usuario" name="user">
	</form>

	<form action="deleteUser.sh" method="post" ENCTYPE="text/plain">
        	<h5>Introduce user name to delete</h5>
		Name: <input type="text" name="delete" size="20"> 
		<input type="submit" value="Borrar usuario" name="delete">
	</form>

        </body>
</html>
'
