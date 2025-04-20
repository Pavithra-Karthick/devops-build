FROM nginx:alpine
RUN cp /usr/share/nginx/html/index.html /usr/share/nginx/html/index2.html
RUN rm -rf /usr/share/nginx/html/index.html
COPY build  /usr/share/nginx/html/
