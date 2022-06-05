# README

AUTHOR: SAKET ZINGADE

-> added dockerfile to install required gems and apts
-> added docker-compose.yml to create and run docker images and volumes
-> added .dockerignore
-> added .end which is added to .dockerignore
-> updated Gemfile with required gems
-> updated Gemfile.lock with current gems
-> the docker-compose.yml contains the image containers and volumes required
-> updated ./config/environments/development.rb
-> created ./config/unicorn.rb
-> created .gitignore
-> updated database.yml
-> created secrets.yml

-> created nginx.conf
-> nginx.dockerfie specifically for nginx
-> running docker compose up -d
    creates the images required (Screenshot_1.png)

-> script.js and nodeapp.js created for nginx to load balance multiple containers

-> created cron job .my.cnf

nginx/stable does not have a release file for Ubuntu 22.04 hence docker compose up --build fails