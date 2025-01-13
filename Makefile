-include .env

up:
	docker compose build && docker compose up -d && docker compose logs -f

db:
	docker exec -it $(DB_HOST) psql -U $(DB_USER) -d $(DB_NAME)

logs:
	docker compose logs -f

restart:
	rm -rf ./docker/postgres/data && docker compose down && docker compose build && docker compose up -d && docker compose logs -f

spy-up:
	docker compose -f docker-compose-spy.yml up --build --force-recreate spy
	docker rm spy
	docker compose -f docker-compose-spy.yml up -d --build nginx_schemaspy

format:
	uv run sqlfluff format && uv run sqlfluff lint
