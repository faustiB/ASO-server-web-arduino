#!/bin/bash

$(sudo logger -i system is being rebooted)
$(sudo systemctl restart apache2.service)
