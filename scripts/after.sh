#!/bin/bash

sudo /opt/bitnami/ctlscript.sh stop apache
rsync -a --progress /tmp/deploy/ /home/bitnami/apps/wordpress/htdocs
if [ $? -eq 0 ]; then
	echo "OK moved objects"
else
	echo "Fail moving objects"
fi

sudo /opt/bitnami/ctlscript.sh start apache
