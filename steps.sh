# Run a Keycloak instance
docker run -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=password -p 8080:8080 -p 8443:8443 --name keycloak -d --network smollan quay.io/keycloak/keycloak:9.0.0

# Run an API-Umbrella instance
docker run -d --name umbrella -p 80:80 -p 443:443 --network smollan nrel/api-umbrella

# Run a gatekeeper instance
docker run --name=gatekeeper -it -v (pwd)/gatekeeper:/tmp --network smollan -p 3000:3000 quay.io/keycloak/keycloak-gatekeeper:9.0.0 --config /tmp/gatekeeper-config.yaml




{
  "realm": "Smollan",
  "auth-server-url": "https://localhost:8443/auth/",
  "ssl-required": "external",
  "resource": "api-umbrella",
  "credentials": {
    "secret": "ed0f9c2e-9b68-4000-bf6e-f58ce8828f9d"
  },
  "confidential-port": 0
}