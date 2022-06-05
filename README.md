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

-> created reverse-proxy.conf
-> Dockerfie.nginx specifically for nginx
-> running docker compose up -d
    creates the images required (Screenshot_1.png)
-> running docker compose up --build
FOLLOWING ERROR:
=> ERROR [docker_iris/nginx:0.1  9/13] ADD config/test.conf /etc/nginx/conf.d/reverse-proxy.con  0.0s
=> ERROR [docker_iris/nginx:0.1 10/13] ADD config/test.conf /etc/nginx/sites-available/test      0.0s
=> ERROR [docker_iris/nginx:0.1 11/13] COPY reverse-proxy.conf /etc/nginx/conf.d/reverse-proxy.  0.0s

failed to solve: failed to compute cache key: "/reverse-proxy.conf" not found: not found
(Screenshot_2.png)
