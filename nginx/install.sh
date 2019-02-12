#!/bin/bash

# This will gather a list of all paths in the current directory, excluding *.sh files
# and then copy recursively to the nginx conf dir.

echo -e "Copying NGINX configuration files to /usr/local/nginx/conf ..."
ls | grep -v *.sh | xargs -I{} sudo cp -rf "{}" /usr/local/nginx/conf
echo -e "Copy complete, have a nice day."
