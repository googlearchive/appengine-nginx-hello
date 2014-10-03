FROM google/appengine
RUN apt-get -y install nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /usr/share/nginx/www/_ah
COPY ok /usr/share/nginx/www/_ah/start
COPY ok /usr/share/nginx/www/_ah/health
COPY index.html /usr/share/nginx/www/index.html
ENTRYPOINT /usr/sbin/nginx
