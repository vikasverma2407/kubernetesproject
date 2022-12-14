FROM centos:7.9.2009
MAINTAINER v@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/biznews.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip biznews.zip
RUN cp -rvf free-news-website-template/* .
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
