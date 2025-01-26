#!/bin/bash

# Exit the script immediately if any command exits with a non-zero status
set -e

# Function to handle errors with custom messages
handle_error() {
    echo "Error: $1"
    exit 1
}

# Navigate to the application directory
cd /home/ubuntu/src/mate-fastapi-homework-5 || handle_error "Failed to navigate to the application directory."

# Update the code from the repository
git pull || handle_error "Failed to pull the latest code from the 'mate' repository on the 'main' branch."

# Build and run Docker containers with Docker Compose
docker-compose -f docker-compose-prod.yml up -d --build || handle_error "Failed to build and run Docker containers using docker-compose-prod.yml."

# Print a success message upon successful deployment
echo "Deployment completed successfully."
