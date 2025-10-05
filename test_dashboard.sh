#!/bin/bash
# test_dashboard.sh: Put load on the system to test Netdata

echo "Installing stress tool..."
sudo apt install -y stress

echo "Starting CPU stress test for 60 seconds..."
stress --cpu 4 --timeout 60

echo "Stress test completed. Check Netdata dashboard for updated metrics!"
