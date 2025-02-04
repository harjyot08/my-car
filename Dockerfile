# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Install git to clone the repository
RUN apk update && apk add git && apk update

# Clone the Git repository (replace the URL with your repository)
RUN git clone https://github.com/harjyot08/my-car.git /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80


# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
