#!/bin/bash

# List Docker images
echo "Listing available Docker images..."
docker images

# Run MySQL container
echo "Starting MySQL container..."
docker run -d -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=learncrud \
  --name=mysql_db_svc \
  mysql:8.0

# List running Docker containers to verify MySQL is running
echo "Listing running containers..."
docker ps

# Fetch the container ID of the MySQL container
CONTAINER_ID=$(docker ps -qf "name=mysql_db_svc")

# Display logs of the MySQL container
echo "Displaying logs of MySQL container (ID: $CONTAINER_ID)..."
docker logs $CONTAINER_ID
