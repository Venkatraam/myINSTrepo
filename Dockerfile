  FROM ubuntu:18.04
  RUN  apt-get update
  RUN  apt-get install -y apache2 curl net-tools git 
  RUN git clone https://github.com/Venkatraam/myINSTrepo.git
  COPY ./index.html /var/www/html/index.html
  ENTRYPOINT apachectl -D FOREGROUND
  EXPOSE 80:80
