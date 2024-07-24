DIR-FILE= /home/abenmous/Desktop/Inception/srcs/docker-compose.yml

DOCKER  = docker

COMPOSE = docker-compose -f $(DIR-FILE)

all: up-build

up:
	$(COMPOSE) up

down:
	$(COMPOSE) down

build:
	$(COMPOSE) build

up-build:
	$(COMPOSE) up --build

fclean:
	$(DOCKER) system prune -af

re:	down fclean up-build