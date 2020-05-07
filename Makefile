init: docker-down-clear \
	  frontend-clear \
	  docker-pull docker-build docker-up \
	  frontend-init
up: docker-up
down: docker-down
restart: down up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

frontend-clear:
	docker run --rm -v ${PWD}/app:/app -w /app alpine sh -c 'rm -rf .ready dist'

frontend-init: frontend-npm-install frontend-ready

frontend-npm-install:
	docker-compose run --rm frontend-node-cli npm install

frontend-ready:
	docker run --rm -v ${PWD}/app:/app -w /app alpine touch .ready
