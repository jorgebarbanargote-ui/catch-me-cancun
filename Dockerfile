# Catch Me Cancun — static site served by nginx
FROM nginx:alpine

# Clean default content and add our nginx config
RUN rm -rf /usr/share/nginx/html/*
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the website
COPY index.html reserva.html robots.txt sitemap.xml /usr/share/nginx/html/
COPY img /usr/share/nginx/html/img

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
