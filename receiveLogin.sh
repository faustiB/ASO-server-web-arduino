#!/bin/bash



read username
read password

username=${username::-1}
usernameOk=$(echo "$username" | awk -F= '{print $2}')

password=${password::-1}
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
  


echo -e "les dades enviades <br/>"


echo -e "El valor de user es : $usernameOk"
echo -e "El valor de password  es: $passwordOk"


echo "<h3>MENU</h3>"
echo '
	<form action="reboot.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit" value="Reboot" name="parametrePOST">
	</form>
	<form action="shutdown.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit" value="Shutdown" name="parametrePOST">
	</form>
	<form action="gestion.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit" value="Gestion de procesos" name="parametrePOST">
	</form>
	<form action="monitor.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit" value="Monitorizar" name="parametrePOST">
	</form>
	<form action="log.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit"Logs" value="See logs" name="parametrePOST">
	</form>
	<form action="cron.sh" method="get" ENCTYPE="text/plain">
        	<input type="submit"Logs" value="crontab" name="parametrePOST">
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
