init:
	@echo "Initializing..."
	@pre-commit install
	@echo "Initialization complete."

check:
	@echo "Pre-commit check..."
	@pre-commit run --all-files

dev:
	@docker compose up --build

build:
	@docker build -f Dockerfile.ops -t my-krakend:latest .

run:
	@docker run --rm -p 8082:8080 --name krakend my-krakend:latest
