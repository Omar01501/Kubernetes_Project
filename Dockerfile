FROM centos:latest
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/free-css-templates/page296/neogym.zip /var/www/html
WORKDIR /VAR/WWW/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic.zip
CMD ["/usr/sbin/httpd" , "-D" ,"FOREGROUND"]
EXPOSE 80 22 