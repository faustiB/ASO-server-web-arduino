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
        </body>
</html>
'
