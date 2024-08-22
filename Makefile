all: up

up:
	@mkdir -p /nfs/homes/cbouwen/Course/Github/Inception/data
	@mkdir -p /nfs/homes/cbouwen/Course/Github/Inception/data/wordpress
	@mkdir -p /nfs/homes/cbouwen/Course/Github/Inception/data/mariadb
	@docker-compose -f srcs/docker-compose.yml up -d

build:
	@docker-compose -f srcs/docker-compose.yml build

rebuild:
	@docker-compose -f srcs/docker-compose.yml build --no-cache

stop:
	@docker-compose -f srcs/docker-compose.yml stop

down:
	@docker-compose -f srcs/docker-compose.yml down

logs:
	@docker-compose -f srcs/docker-compose.yml logs

status:
	@docker-compose -f srcs/docker-compose.yml ps

clean:
	@docker-compose -f srcs/docker-compose.yml down --rmi all --volumes

fclean: clean
	rm -rf /nfs/homes/cbouwen/Course/Github/Inception/data

re: clean rebuild up

.PHONY: all up build rebuild stop down logs status clean fclean re
