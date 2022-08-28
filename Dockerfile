FROM ubuntu:16.04
MAINTAINER pawanrajbans@gmail.com
RUN apt update && apt-get install -y nginx \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
ENTRYPOINT ["nginx", "-g", "daemon off;"]
EXPOSE 80
