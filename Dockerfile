FROM nginx:alpine

# Copy the static website files to nginx html directory
COPY . /usr/share/nginx/html/

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Remove unnecessary files from html directory
RUN rm /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
