#!/bin/bash
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

#cal consultar la query string on hi ha les dades del formulari  

dades=$(echo $QUERY_STRING)


echo -e "les dades enviades: $dades <br/>"

#TO-DO : falta terminar de separar la cadena 
v1=$(echo $dades | awk -F& '{print $1}')
v2=$(echo $dades | awk -F& '{print $2}')

v3=$(echo $v1 | awk -F= '{print $2}')
v4=$(echo $v2 | awk -F= '{print $2}')

echo -e "El valor es: $v1"
echo -e "El valor es: $v2"
echo -e "El valor es: $v3"
echo -e "El valor es: $v4"


echo "<h3>MENU</h3>"


echo -e '<button type="submit" action="shutdown.sh">Shutdown</button><br>'
echo -e '<button type="submit" action="reboot.sh">Reboot</button><br>'



echo -e "
         </body>
</html>
"
