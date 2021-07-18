#!/usr/bin/env bash
sleep 10

nc -zv 127.0.0.1 80

if [ $? -eq 0 ]; then
	echo "Service started successfully"
else
	echo "service failed to start"
fi
