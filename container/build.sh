#!/bin/bash

echo "Creating data directories..."
# Create directories for Kafka brokers and MinIO
mkdir -p kafka-data-1 kafka-data-2 kafka-data-3 minio-data

echo "Setting permissions..."
# Grant full permissions so the Docker containers can write to host volumes
chmod -R 777 kafka-data-* minio-data

echo "Starting the cluster..."
# Start Kafka and MinIO using the 'kafka' profile
docker compose --profile kafka up -d

echo "Waiting for services to initialize..."
sleep 10

echo "Cluster Status:"
docker compose ps