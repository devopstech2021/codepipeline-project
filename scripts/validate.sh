#!/bin/bash
sleep 2

if [ "$DEPLOYMENT_GROUP_NAME" == " growexx-devops-deploy" ]; then

result=$(curl -sL -w "%{http_code}\\n" "https://test.growexx.com/" -o /dev/null)
fi

if [ "$result" = "200" ]; then
exit 0

else
 echo "Deployment failed"
fi
