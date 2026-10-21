#!/bin/sh
set -e

# Ensure Laravel storage and cache directories exist with proper write permissions
mkdir -p /var/www/html/storage/framework/cache/data \
         /var/www/html/storage/framework/sessions \
         /var/www/html/storage/framework/views \
         /var/www/html/storage/logs \
         /var/www/html/bootstrap/cache

find /var/www/html/storage -type d -exec chmod 777 {} + 2>/dev/null || true
find /var/www/html/bootstrap/cache -type d -exec chmod 777 {} + 2>/dev/null || true

exec "$@"
