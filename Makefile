all:
	docker-compose -f ./srcs/docker-compose.yml up -d --build

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

clean: down wpc
	docker system prune -a
	docker volume prune -f
	docker network prune -f

down:
	docker-compose -f ./srcs/docker-compose.yml down -v

wpc:
	sudo rm -rf /home/hhattaki/data/wordpress/* /home/hhattaki/data/DB/*

re: clean all