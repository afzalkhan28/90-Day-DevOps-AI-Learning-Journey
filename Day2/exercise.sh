#!/bin/bash

echo "Starting Linux Administration Exercise"

# Create group
groupadd developers

# Create user
useradd -m developer

# Add user to group
usermod -aG developers developer

# Create application directory
mkdir -p /opt/afzal-app

# Change ownership
chown root:developers /opt/afzal-app

# Set permissions
chmod 770 /opt/afzal-app

# Verify configuration
echo "User information:"
id developer

echo "Directory permissions:"
ls -ld /opt/afzal-app

echo "Exercise completed!"