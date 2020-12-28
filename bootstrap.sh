#!/bin/bash

if [ "$SERVICE_TYPE" = "web" ]; then
  bundle exec rackup -p 8080 -o '0.0.0.0'
elif [ "$SERVICE_TYPE" = "worker" ]; then
  bundle exec sidekiq -C config/sidekiq.yml
fi