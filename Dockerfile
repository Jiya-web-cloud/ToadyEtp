FROM ubuntu

# Install NGINX
RUN apt update && apt install -y nginx

# Set working directory to NGINX's default HTML folder
WORKDIR /usr/share/nginx/html

# Copy current directory contents to working directory
COPY . .

# Expose port 80
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

