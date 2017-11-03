#! /bin/bash
# Deploy only if it's not a pull request

CLUSTER_NAME=defualt
SERVICE=node-app-service

if [ -z "$TRAVIS_PULL_REQUEST" ] || [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  # Deploy only if we're testing the master branch
  if [ "$TRAVIS_BRANCH" == "master" ]; then
    echo "Deploying $TRAVIS_BRANCH on $TASK_DEFINITION"
    ./ecs-deploy.sh -c $CLUSTER_NAME -n $SERVICE -i barakh1985/barakci
  else
    echo "Skipping deploy because it's not an allowed branch"
  fi
else
  echo "Skipping deploy because it's a PR"
fi