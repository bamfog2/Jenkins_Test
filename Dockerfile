# Use the official Nginx image as the base
FROM nginx:latest

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the container
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Nginx daemon start
CMD ["nginx", "-g", "daemon off;"]
