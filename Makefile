# Makefile

# Define variables
COMPOSE_FILE := compose.yaml
DOCKER_COMPOSE := docker-compose -f $(COMPOSE_FILE)

# Default target
.PHONY: help
help:
	@echo "Available commands:"
	@echo "  make up              - Start all containers"
	@echo "  make down            - Stop and remove all containers"
	@echo "  make restart         - Restart all containers"
	@echo "  make logs            - View logs from all containers"
	@echo "  make ps              - List running containers"

# Start all containers
.PHONY: up
up:
	@$(DOCKER_COMPOSE) up -d --build

# Stop and remove all containers
.PHONY: down
down:
	@$(DOCKER_COMPOSE) down

# Stop  all containers
.PHONY: stop
stop:
	@$(DOCKER_COMPOSE) stop

# Restart all containers
.PHONY: restart
restart:
	@make stop
	@make up

# View logs from all containers
.PHONY: logs
logs:
	$(DOCKER_COMPOSE) logs -f

# List running containers
.PHONY: ps
ps:
	$(DOCKER_COMPOSE) ps

# Destroy all containers and volumes
.PHONY: destroy
destroy:
	$(DOCKER_COMPOSE) down -v

# Rebuild and restart all containers
.PHONY: rebuild
rebuild:
	$(DOCKER_COMPOSE) down
	$(DOCKER_COMPOSE) build
	$(DOCKER_COMPOSE) up -d