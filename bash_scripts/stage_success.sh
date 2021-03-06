#!/bin/bash

args=("$@")
TOKEN=${args[0]}
CONTEXT=${args[1]}

echo "Commit: $GIT_COMMIT"
echo "Branch: $GIT_BRANCH"
echo "Context: $CONTEXT"

curl "https://api.GitHub.com/repos/dreamkas/Kassa_F/statuses/$GIT_COMMIT?access_token=$TOKEN" \
-H "Content-Type: application/json" \
-X POST \
-d "{\"state\": \"success\", \"context\": \"Jenkins-CI: [$CONTEXT]\", \"description\": \"Completed Successfully\", \"target_url\": \"$RUN_DISPLAY_URL\"}"