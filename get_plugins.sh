#! /bin/sh
#

echo -n "Username: "
read USERNAME
echo -n "Password: "
read -s PASSWORD


USER=$USERNAME
PASS=$PASSWORD
FOREMAN_URL="https://satellite.lab.example.com" 

# Get hosts
curl -X GET -s -k -u ${USER}:${PASS} ${FOREMAN_URL}/api/v2/plugins | python -m json.tool

exit 0
