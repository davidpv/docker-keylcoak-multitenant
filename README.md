# Keycloak Multitenant Theme POC

This project is a Proof of Concept (POC) demonstrating how to configure a Keycloak multitenant sample stack with two Keycloak realms. 
It includes a custom theme that prompts for the realm code before redirecting.

## Components

- Keycloak v22
- Gitea
- Docker
- Docker Compose

## Prerequisites

- Docker and Docker Compose installed on your system.
- Add 127.0.0.1 keycloak to your hosts file !important.
- Once the project is up and running you need to manually add the users to the realma and realmb.

## Setup

1. Clone this repository:
   ```
   git clone <repository-url>
   cd <repository-name>
   ```

2. Add the following entry to your hosts file:
   ```
   127.0.0.1 keycloak
   ```
   This is necessary for local development functionality.

3. Start the stack using Docker Compose:
   ```
   make up
   ```

4. Access Keycloak at `http://keycloak:8080`

5. Access Gitea at `http://localhost:3000`

## Configuration

The project includes the following key configuration files:

- `compose.yaml`: Docker Compose configuration
- `Makefile`: Utility commands for managing the stack
- `realm-export_realma.json`: Configuration for Realm A
- `realm-export_realmb.json`: Configuration for Realm B
- `realm-export_gitea.json`: Configuration for Gitea realm

## Custom Theme

This project includes a custom Keycloak theme that asks for the realm code before redirecting. The theme files can be found in the `docker/keycloak/themes/multitenant` directory.

## Usage

1. Start the stack using `make up` or `docker-compose up -d`
2. Access Keycloak and configure the realms as needed
3. Configure Gitea to use Keycloak for authentication

## Development

To make changes to the configuration:

1. Modify the relevant JSON files
2. Restart the stack using `make restart`