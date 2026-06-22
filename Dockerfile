# Use Nginx to serve the static files
FROM nginx:alpine

# Copy the pre-built app from dist folder
COPY dist /usr/share/nginx/html

# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
