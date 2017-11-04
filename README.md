# node_docker_ci
A simple node app running on docker for CI.CD pipeline POC

App code is nodejs, using express to set up a simple web server and mocha for tests.

The code is hosted on GItHub, on push:
	- it triggers a travis-ci build
	- runs the unit tests
	- build the docker container and run it
	- push it to the docker registry
	- trigger a blue-green deployment on AWS ECS

Eventually 	we get a complete CI/CD pipe line that will see the code's life cycle from commit to production without downtime.

