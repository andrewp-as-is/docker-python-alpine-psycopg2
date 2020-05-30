# https://hub.docker.com/_/python
all:
	sudo docker login --username andrewpasis

	sudo docker build -t andrewpasis/python:3.8-alpine-psycopg2 .
	sudo docker push andrewpasis/python:3.8-alpine-psycopg2
