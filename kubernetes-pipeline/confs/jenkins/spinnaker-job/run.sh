#!/bin/bash

# https://www.spinnaker.io/setup/features/script-stage/
echo "Configure script stage in Jenkins"
curl -X POST --fail "$JENKINS_HOST/createItem?name=$JOB_NAME" \
--data-binary @/spinnaker/scriptJobConfig.xml \
--user $JENKINS_USERNAME:$JENKINS_PASSWORD \
-H "Content-Type:text/xml"