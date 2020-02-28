FROM httpd
RUN apt-get update -y && apt-get install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page251/health-center.zip /tmp/health.zip
RUN cd /tmp/ && unzip health.zip 
RUN cp -rf /tmp/2098_health/* /usr/local/apache2/htdocs/

