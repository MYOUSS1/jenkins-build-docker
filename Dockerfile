FROM nginx:latest
RUN sed -i 's/nginx/MEITE/g' /usr/share/nginx/html/index.html
EXPOSE 81


