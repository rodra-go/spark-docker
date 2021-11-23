DOCKER_NETWORK = docker-hadoop_default
ENV_FILE = hadoop.env
current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t hadoop-base:2.0.0-hadoop3.2.1-java8 ./hadoop-base
	docker build -t hadoop-namenode:2.0.0-hadoop3.2.1-java8 ./namenode
	docker build -t hadoop-datanode:2.0.0-hadoop3.2.1-java8 ./datanode
	docker build -t hadoop-resourcemanager:2.0.0-hadoop3.2.1-java8 ./resourcemanager
	docker build -t hadoop-nodemanager:2.0.0-hadoop3.2.1-java8 ./nodemanager
	docker build -t hadoop-historyserver:2.0.0-hadoop3.2.1-java8 ./historyserver
	docker build -t hadoop-submit:2.0.0-hadoop3.2.1-java8 ./submit
