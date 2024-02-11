#!/bin/bash

# Function to get the latest version of Terraform
get_latest_terraform_version() {
    latest_version=$(curl -s https://releases.hashicorp.com/terraform/index.json | jq -r '.versions[].builds[].version' | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' | sort -V | tail -n1)
    echo "$latest_version"
}

# Function to install Terraform
install_terraform() {
    latest_version=$(get_latest_terraform_version)
    download_url="https://releases.hashicorp.com/terraform/${latest_version}/terraform_${latest_version}_linux_amd64.zip"

    echo "Downloading Terraform ${latest_version}..."
    wget -q "$download_url" -O /tmp/terraform.zip

    echo "Extracting Terraform..."
    unzip -qq /tmp/terraform.zip -d /tmp

    echo "Installing Terraform..."
    sudo mv /tmp/terraform /usr/local/bin/

    echo "Cleaning up..."
    rm /tmp/terraform.zip

    echo "Terraform ${latest_version} has been installed."
}

# Main script
install_terraform
