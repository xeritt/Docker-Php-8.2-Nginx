mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))

COMPOSE=docker-compose -p php82nginx -f docker-compose.yml --env-file $(current_dir)docker/.env.local

docker.build: docker.stop
	$(COMPOSE) build --no-cache

docker.rebuild: docker.stop
	$(COMPOSE) up -d --build

docker.remove:
	$(COMPOSE) down --remove-orphans

docker.restart: docker.stop docker.start

docker.start:
	$(COMPOSE) up -d

docker.stop:
	$(COMPOSE) down

shell.nginx:
	$(COMPOSE) exec nginx sh

shell.php:
	$(COMPOSE) exec php-fpm sh
