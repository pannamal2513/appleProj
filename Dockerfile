FROM ubuntu:18.04
RUN apt update
RUN apt install -y apache2
COPY website/ /var/www/html/
RUN rm -f /var/www/html/index.html || true 
RUN chown -R www-data:www-data /var/www/html 
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
