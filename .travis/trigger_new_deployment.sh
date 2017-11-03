#! /bin/bash

CLUSTER_NAME=default
SERVICE=node-app-service 

chmod +x .travis/*
.travis/ecs-deploy.sh -c $CLUSTER_NAME -n $SERVICE -i barakh1985/barakci
