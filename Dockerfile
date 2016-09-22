FROM nginx_php:0.1
MAINTAINER aaaa

# add nginx, php files

#ENV \
#  PATH=/root/programs/nginx/sbin:/root/programs/php/bin:/root/programs/php/sbin:$PATH

#EXPOSE 80 443


# sh Àû¿ë
COPY entrypoint.sh /

# put customized config and code files to /data
#VOLUME ["/data"]
#WORKDIR /data

# start nginx, php-fpm
#ENTRYPOINT ["/tmp/script/bootstrap.sh"]
#CMD ["/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]