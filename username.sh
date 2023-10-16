#! /bin/bash
# username.sh
# author: Andy Wu
# date: 10/15/23
echo -n "Enter a valid username. It may only contain lowercase letters, digits, and underscores. It must start with a letter, and must be at least 3 characters long but not longer than 12 characters."
read -r username
while ! echo "$username" | grep -q '^[a-z][a-z0-9_]\{2,11\}$'
do
	echo -n "Invalid username. Try again."
	read -r username
done
echo "Thank you."
