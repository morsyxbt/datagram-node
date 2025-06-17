#!/bin/bash

echo "📡 Starting Datagram Node Setup..."

# Ask for API key
read -p "👉 Enter your Datagram API Key: " api_key

# Update system & install dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y wget screen

# Download CLI
wget https://github.com/Datagram-Group/datagram-cli-release/releases/latest/download/datagram-cli-x86_64-linux

# Move & make it executable
sudo mv datagram-cli-x86_64-linux /usr/local/bin/datagram-cli
sudo chmod +x /usr/local/bin/datagram-cli

# Create screen & run
screen -dmS datagram datagram-cli run -- -key $api_key

echo "✅ Done! Node started inside a screen session named 'datagram'"
