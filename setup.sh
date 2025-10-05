#!/bin/bash
# setup.sh: Install Netdata on a new system

set -e

echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "Installing Docker..."
sudo apt install -y docker.io docker-compose

echo "Creating Netdata container..."
docker run -d --name=netdata \
  -p 19999:19999 \
  -v netdataconfig:/etc/netdata \
  -v netdatalib:/var/lib/netdata \
  -v netdatacache:/var/cache/netdata \
  --restart unless-stopped \
  netdata/netdata

echo "Netdata setup completed!"
echo "Access the dashboard at: http://$(hostname -I | awk '{print $1}'):19999"
