#!/bin/bash

echo "🚀 Starting all Spring Boot microservices..."

services=(
  "auth-service"
  "user-service"
  "booking-service"
  "vehicle-service"
  "invoice-service"
  "service-center-service"
  "gateway-service"
)

for service in "${services[@]}"; do
  echo "▶️ Starting $service..."
  (cd "$service" && mvn spring-boot:run) &
done

echo "✅ All services are starting in the background."
wait
