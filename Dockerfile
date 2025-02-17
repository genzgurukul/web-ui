# Use Nginx as a base image
FROM nginx:alpine

# Copy static files to Nginx's public folder
COPY index.html /usr/share/nginx/html/
#COPY company-logo.png /usr/share/nginx/html/

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

# Use the entrypoint script as CMD
CMD ["/entrypoint.sh"]
