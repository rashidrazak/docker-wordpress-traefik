FROM wordpress:latest

RUN apt-get update && apt-get install -y vim

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["apache2-foreground"]