FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/
COPY logo-bml.png /usr/share/nginx/html/
COPY og-image.png /usr/share/nginx/html/
COPY favicon.ico /usr/share/nginx/html/
COPY apple-touch-icon.png /usr/share/nginx/html/
EXPOSE 80
