# Use the official Nginx image as base
FROM nginx:latest

# Copy the static content to Nginx's default public directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
