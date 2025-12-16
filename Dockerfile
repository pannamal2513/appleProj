FROM devopsedu/ubuntu
RUN apt update
RUN apt install -y apache2
COPY website/ /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
