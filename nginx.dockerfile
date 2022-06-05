FROM nginx:latest

# install nginx
RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update -y
RUN apt-get install -y nginx
# local nginx.conf file to nginx directoyr on host
COPY nginx.conf /etc/nginx/nginx.conf
# deamon mode off
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# expose ports
EXPOSE 8080 443

# create symlinks
RUN ln -s /etc/nginx/sites-available/test /etc/nginx/sites-enabled/

WORKDIR /etc/nginx

CMD ["nginx", "-g", "daemon off;"]
