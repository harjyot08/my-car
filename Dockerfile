# Use the official Ubuntu image from the Docker Hub
FROM ubuntu:latest

# Maintainer info
MAINTAINER harjyot@maxxmann.in

# Update the package list and install required packages
RUN apt update && apt install -y apache2 zip unzip git

# Clone the Git repository into /var/www/html
RUN git clone https://github.com/harjyot08/my-car.git /var/www/html

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache in the foreground when the container runs
CMD ["apachectl", "-D", "FOREGROUND"]
