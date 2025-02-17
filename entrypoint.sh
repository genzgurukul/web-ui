#!/bin/sh
echo "Substituting GRAPHQL_ENDPOINT with: $GRAPHQL_ENDPOINT"
# Replace the placeholder in index.html with the environment variable value
envsubst '$GRAPHQL_ENDPOINT' < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html.tmp
mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html
# Start Nginx
exec nginx -g 'daemon off;'
