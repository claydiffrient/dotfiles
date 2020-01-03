#!/usr/bin/env bash

COMMAND=${1:-start}

if [ "$COMMAND" = "start" ]; then
  printf "Starting VPN.\n"
  # authgroup options: "VPN_Full-Tunnel" or "Employee_VPN"
  sudo openconnect --user=$USER \
                   --authgroup Employee_VPN \
                   --background vpn.instructure.com \
                   --quiet
  exit $?
fi


if [ "$COMMAND" = "stop" ]; then
  sudo pkill -2 openconnect
  exit $?
fi

echo "Usage: $(basename "$0") start|stop"