#!/bin/bash

# This will gather a list of all paths in the current directory, excluding *.sh files
# and then copy recursively to the nginx conf dir.

echo -e "Copying NGINX configuration files to /etc/nginx/conf ..."
ls | grep -v *.sh | xargs -I{} sudo cp -rf "{}" /etc/nginx/conf
echo -e "Copy complete, have a nice day."
