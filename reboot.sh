#!/bin/bash
echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
         <head>
         </head>
<body>
"
echo -e "<h3>System reboot</h3>"
	sudo shutdown -r now
echo -e "
         </body>
</html>
"
