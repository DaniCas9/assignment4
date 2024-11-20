FROM fedora:latest
RUN dnf upgrade -y && dnf install -y tuxpaint vim httpd
COPY myinfo.html /var/www/html/
EXPOSE 80/TCP
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND


