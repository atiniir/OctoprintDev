#!/usr/bin/env bash
echo "Hello from restart.sh!"
s6-svc -r /var/run/s6/services/octoprint