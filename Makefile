launch:
		docker-compose -f ./docker-compose.yml pull && \
		docker-compose -f ./docker-compose.yml -p bikepack up

launch-ehv:
		docker-compose -f ./docker-compose.area-specific.yml pull && \
		docker compose  --env-file .\service-areas\ehv\docker-compose.env -f .\docker-compose.area-specific.yml -p bikepack-ehv up --build --no-recreate

launch-ams:
		docker-compose -f ./docker-compose.area-specific.yml pull && \
		docker compose  --env-file .\service-areas\ams\docker-compose.env -f .\docker-compose.area-specific.yml -p bikepack-ams up --build --no-recreate