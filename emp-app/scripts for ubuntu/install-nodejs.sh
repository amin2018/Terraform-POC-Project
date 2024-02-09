#!/bin/bash

# Update the apt package index
sudo apt-get update

# Install packages necessary for adding a new repository over HTTPS
sudo apt-get install -y ca-certificates curl gnupg

# Create the directory for storing the GPG key if it doesn't already exist
sudo mkdir -p /etc/apt/keyrings

# Download the NodeSource repository GPG key and add it to the keyring
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Set the desired Node.js major version
NODE_MAJOR=21
echo "Selected Node.js major version: $NODE_MAJOR"

# Configure the NodeSource repository for the selected Node.js version
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

# Update the apt package index with the new repository's package list
sudo apt-get update

# Install Node.js
sudo apt-get install nodejs -y

# Verify the installation
echo "Node.js installation complete. Installed version:"
node --version
