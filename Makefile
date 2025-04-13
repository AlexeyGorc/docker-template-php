up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

restart:
	docker compose down && docker compose up -d --build

logs:
	docker compose logs -f

ps:
	docker compose ps

composer:
	docker compose exec php composer install

bash:
	docker compose exec php bash

mysql:
	docker compose exec db mysql -u root -proot app