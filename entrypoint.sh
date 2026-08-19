#!/bin/bash

# Set default port if not provided by Railway
PORT="${PORT:-8000}"

# Panel internal port
export PANEL_PORT=10000

# Update nginx.conf port
sed -i "s/listen NGINX_PORT;/listen ${PORT};/g" /etc/nginx/nginx.conf

# Start Nginx in background
nginx

# Ensure xray log directory exists if needed
# mkdir -p /var/log/xray

# Start Python Panel in foreground
exec python3 main.py
