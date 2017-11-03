#! /bin/bash

chmod +x .travis/*
.travis/ecs-deploy.sh -c $CLUSTER_NAME -n $SERVICE -i barakh1985/barakci
