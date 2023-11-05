all:
	docker-compose -f ./srcs/docker-compose.yml up -d --build

clean: wpc down
	docker system prune -a

down:
	docker-compose -f ./srcs/docker-compose.yml down -v

wpc:
	sudo rm -rf /home/hhattaki/data/wordpress/*