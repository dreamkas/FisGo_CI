#!/bin/bash

TOKEN=$1
CONTEXT="$2"

echo "Token: $TOKEN"
echo "Context: $CONTEXT"
echo "Commit: $GIT_COMMIT"
echo "Branch: $GIT_BRANCH"


curl "https://api.GitHub.com/repos/dreamkas/FisGo_F/statuses/$GIT_COMMIT?access_token=$TOKEN" \
-H "Content-Type: application/json" \
-X POST \
-d "{\"state\": \"pending\", \"context\": \"Jenkins-CI: ${CONTEXT} Stage\", \"target_url\": \"http://192.168.242.43:8080/job/dreamkas-f-ci-pipeline-test/$BUILD_NUMBER\"}"