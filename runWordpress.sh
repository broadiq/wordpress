#!/bin/sh

docker stop dev-wordpress

docker rm dev-wordpress

docker run --name dev-wordpress -p 8112:80 -it \
    -e WORDPRESS_DB_USER=root \
    -e WORDPRESS_DB_HOST=35.188.34.242:31949 \
    -e WORDPRESS_DB_PASSWORD=testing \
    -e WORDPRESS_DB_NAME=test \
    -v /Users/jlutz2/Development/apps/wordpress/data:/var/www/html \
    -d t-wordpress 


docker logs dev-wordpress
