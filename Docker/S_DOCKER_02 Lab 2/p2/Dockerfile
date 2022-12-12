FROM httpd:2.4
ENV CONTAINER=docker
COPY index.html /usr/local/apache2/htdocs/index.html
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
EXPOSE 9999
CMD echo $CONTAINER && httpd-foreground
