FROM ubuntu:14.04

RUN  apt-get update \
     && apt-get -y upgrade \
     && apt-get install -y build-essential nginx apache2-utils openssl libssl-dev pkg-config curl vim

RUN rm /etc/nginx/sites-enabled/default

EXPOSE 80

COPY conf/app /etc/nginx/sites-enabled/app

CMD ["service", "nginx", "restart"]
