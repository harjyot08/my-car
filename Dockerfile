# Use NGINX as the base image
FROM nginx:alpine

# Install git
RUN apk update && apk add git && apk update

# Remove any existing content in the target directory before cloning
RUN rm -rf /usr/share/nginx/html/*

# Clone the Git repository into the directory
RUN git clone https://github.com/harjyot08/my-car.git /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80
