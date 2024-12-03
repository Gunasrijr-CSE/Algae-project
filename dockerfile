# Use Nginx to serve static HTML
FROM nginx:alpine

# Set working directory to Nginx's default content folder
WORKDIR /usr/share/nginx/html

# Copy only the HTML file to the container
COPY index.html .

# Expose the default Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
