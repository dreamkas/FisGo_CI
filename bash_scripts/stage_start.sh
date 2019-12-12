#!/bin/bash

args=("$@")
TOKEN=${args[0]}
CONTEXT=${args[1]}

echo "Commit: $GIT_COMMIT"
echo "Branch: $GIT_BRANCH"
echo "Context: $CONTEXT"

curl "https://api.GitHub.com/repos/dreamkas/FisGo_F/statuses/$GIT_COMMIT?access_token=$TOKEN" \
-H "Content-Type: application/json" \
-X POST \
-d "{\"state\": \"pending\", \"context\": \"Jenkins-CI: [$CONTEXT Stage]\", \"target_url\": \"$RUN_DISPLAY_URL\"}"