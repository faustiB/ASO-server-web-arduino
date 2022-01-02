#!/bin/bash

ip4=$(/sbin/ip -o -4 addr list wlan0 | awk '{print $4}' | cut -d/ -f1)

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
        <head>
        <meta http-equiv="refresh" content=\"2; url=http://$ip4/cgi-bin/shutdownScript.sh\" />
	</head>
	<body>

	<h3>System shutdown</h3>

        </body>
</html>
"


