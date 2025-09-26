FROM httpd:2.4
LABEL maintainer="sreekanth@gmail.com"

# Copy your index.html and any other static files into Apache docroot
COPY index.html /usr/local/apache2/htdocs/index.html
# (Optional) copy a full folder:
# COPY ./site-content/ /usr/local/apache2/htdocs/

EXPOSE 80
CMD ["httpd-foreground"]


# FROM httpd:2.4
# LABEL maintainer="sreekanth@gmail.com"
# ADD https://www.tooplate.com/download/2135_mini_finance /usr/local/apache2/htdocs/
# WORKDIR /usr/local/apache2/htdocs/
# # If it's a zip, use an intermediate stage or install unzip in a small image before copying files
# EXPOSE 80 443
# CMD ["httpd-foreground"]

# FROM centos:7
# MAINTAINER sreekanth@gmail.com
# RUN yum install -y httpd
# ADD https://www.tooplate.com/download/2135_mini_finance /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80 443
