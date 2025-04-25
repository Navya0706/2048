FROM nginx:alpine

# Clean the default nginx html directory
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files into nginx's web root
COPY . /usr/share/nginx/html

# Expose nginx's default port
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
