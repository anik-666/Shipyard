.PHONY: up down test lint

up:
	docker compose up -d --build --wait

down:
	docker compose down -v

test:
	uv run pytest tests/unit

lint:
	uv run ruff check . && uv run ruff format --check .