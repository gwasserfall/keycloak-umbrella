# Work in progress

#### Setup Testing Environment

Requirements:
	Docker for Desktop (Mac or Windows)

Startup:
	docker-compose up

##### Keycloak

Listens on localhost:8443 & localhost:8080


##### Keycloak Gateway

Check file gatekeeper/gatekeeper-config for listen port


##### API Umbrella

Listens on localhost:443 & localhost:80


#### Aim

Need to set an API key in Keycloak and pass it on to API umbrella, this can be done using claims but would require a custom build of
Keycloak Gateway.
