FROM alpine:3.7
MAINTAINER vivekyad4v - https://github.com/vivekyad4v

RUN apk update && \
    apk add ca-certificates wget perl perl-net-ssleay perl-io-socket-ssl && \ 
    apk add bash && rm -rf /var/cache/apk/*

RUN wget http://caspian.dotconf.net/menu/Software/SendEmail/sendEmail-v1.56.tar.gz -P /tmp/ && \
    tar -xzvf /tmp/sendEmail-v1.56.tar.gz -C /tmp/ && \
    cp -a /tmp/sendEmail-v1.56/sendEmail /usr/local/bin && \
    sed -i "1906s/.*/if (\! IO::Socket::SSL->start_SSL(\$SERVER, SSL_version => \'SSLv23:\!SSLv2\', SSL_verify_mode => 0)) {/" /usr/local/bin/sendEmail && \ 
    rm -rf /tmp/sendEmail*

