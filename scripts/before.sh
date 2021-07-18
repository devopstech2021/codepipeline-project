#!/bin/bash
rm -rf /tmp/deploy
mkdir -p /tmp/deploy
if [ $? -eq 0 ]; then
echo "Directory created"
else
echo "Directory not created"
fi
chown -R sudo:sudo /tmp/deploy
if [ $? -eq 0 ]; then
echo "OK"
else
echo "Fail killing process"
fi
