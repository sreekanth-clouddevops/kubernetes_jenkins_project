FROM centos:7
MAINTAINER sreekanth@gmail.com
RUN yum install -y httpd
ADD https://www.tooplate.com/download/2135_mini_finance /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443
