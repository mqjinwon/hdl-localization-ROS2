#!/bin/bash
 
set -e

# Ros build
source "/opt/ros/humble/setup.bash"

echo "==============HDL localization ROS2 Docker Env Ready================"

cd /root/workspace

exec "$@"
