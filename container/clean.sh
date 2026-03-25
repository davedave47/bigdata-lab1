#!/bin/bash

echo "Stopping and removing containers..."
docker compose --profile kafka down

echo "Deleting data volumes..."
# Be careful: this permanently deletes all Kafka logs and MinIO objects
rm -rf kafka-data-1 kafka-data-2 kafka-data-3 minio-data

echo "Cleanup complete."