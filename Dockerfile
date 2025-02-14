# Use Nginx as a base image                                                     
FROM nginx:alpine
# Copy static files to Nginx's default public folder
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"
