#!/bin/bash

# Navigate to your Maven project directory if necessary
# cd /path/to/your/project

# Clean and build the Maven project
echo "Building Maven project..."
mvn clean install

# Build the Docker image
echo "Building Docker image..."
docker build -t emp_mng_system:v1 .

# List Docker images to verify the new image is built
echo "Listing Docker images..."
docker images

# Run the Docker container
echo "Running Docker container..."
CONTAINER_ID=$(docker run -d -p 8080:8080 emp_mng_system:v1)

# List running Docker containers to verify the new container is up
echo "Listing running Docker containers..."
docker ps

# Display logs for the newly started container
echo "Displaying Docker container logs for container ID: $CONTAINER_ID"
docker logs $CONTAINER_ID

echo "Docker container is up and running. Logs are displayed above."
