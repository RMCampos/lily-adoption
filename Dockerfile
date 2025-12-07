# Use nginx alpine for a lightweight web server
FROM nginx:alpine

# Copy all files to nginx's default serving directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
