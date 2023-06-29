#!/bin/bash

user=$(whoami)
echo "Welcome $user"
echo "-------------"
echo -n "Today is " && date | awk '{print $3" " $2 " "$1}'
echo "-------------"
echo -n "The total uptime of the server is " && uptime | awk '{print $3 $4}'
echo "-------------"
echo -n "The last 2 logins are " && last | awk '{print $1}' | head -n 2 | xargs | awk '{print $1 " and " $2}'
echo "-------------"
echo "The disk space is" && df -h | awk '{print $1 " " $2 " " $3 " "$4 " " }' | head -n 2
echo "-------------"
echo "The Ram available:" && free -h | head -n 2
echo "-------------"



