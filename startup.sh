#!/bin/bash 

# make sure you've copied the default file from the nginx site-enabled and edited the root directory to 
#/home/site/wwwroot/public
# add "try_files $uri $uri/ /index.php?$args" in /etc/nginx/sites-available/default server location;
cp /etc/nginx/sites-available/default /home/site/default
service nginx reload

cd /home/site/wwwroot && cp -n .env.example .env 
php artisan key:generate
service nginx reload
#cd /etc/nginx/sites-available && nano default
# try_files $uri $uri/ /index.php?$args;
#cd /home/site/wwwroot/