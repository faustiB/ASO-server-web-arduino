#!/bin/bash

echo Content-Type: text/html
echo
echo -e "<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Strict//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	</head>
	<body>
	$(sudo cat /var/log/apache2/access.log | tail)
	<br>
	<br>
	<br>
	$(sudo top)
	</body>
</html>
"
