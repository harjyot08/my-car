# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Install git to clone the repository
RUN apk update && apk add git

# Clone the Git repository (replace the URL with your repository)
RUN git clone https://github.com/harjyot08/my-car.git /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Copy a custom Nginx config file (optional, if you want to configure something specific)
# COPY nginx.conf /etc/nginx/nginx.conf

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
