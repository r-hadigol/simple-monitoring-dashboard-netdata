#!/bin/bash
# cleanup.sh: Remove Netdata and clean up system

echo "Stopping Netdata container..."
docker stop netdata || true

echo "Removing Netdata container..."
docker rm netdata || true

echo "Removing Netdata volumes..."
docker volume rm netdataconfig netdatalib netdatacache || true

echo "Cleanup completed!"
