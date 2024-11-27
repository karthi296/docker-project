FROM ubuntu:latest
ARG DEBIAN FRONTEND-non-interactive
RUN apt-get update
RUN apt-get install -y apache2 curl
COPY index.html  /var/www/html/index.html
WORKDIR /var/www/html
ENTRYPOINT ["/usr/sbin/apche2ctl"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80
