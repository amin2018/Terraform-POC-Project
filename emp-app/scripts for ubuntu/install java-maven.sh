#!/bin/bash

# Update the package index
echo "Updating package index..."
sudo apt update

# Check the current Java version
echo "Checking the current Java version..."
java -version

# Install the default Java Runtime Environment (JRE)
echo "Installing the default JRE..."
sudo apt install default-jre -y

# Check the JRE version after installation
echo "Checking the JRE version..."
java -version

# Install the default Java Development Kit (JDK)
echo "Installing the default JDK..."
sudo apt install default-jdk -y

# Check the JDK version after installation
echo "Checking the JDK version with javac..."
javac -version

# Install Maven
echo "Installing Maven..."
sudo apt install maven -y

# Check the Maven version after installation
echo "Checking the Maven version..."
mvn --version

echo "Installation of Java and Maven is complete."
