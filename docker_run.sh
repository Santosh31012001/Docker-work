#!/bin/bash

# Step 1: Start services with Docker Compose and build the image if needed
echo "Starting services with Docker Compose..."
docker-compose up --build -d

# Check if Docker Compose ran successfully
if [ $? -ne 0 ]; then
    echo "Docker Compose failed. Exiting."
    exit 1
fi

echo "Docker Compose started successfully. Services are up and running."
