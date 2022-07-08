# ---------------------------------------------------------------------------- #
# setup 
# ---------------------------------------------------------------------------- #

dev-build:
	docker-compose build

dev-start:
	docker-compose up --remove-orphans -d

dev-stop:
	docker-compose down

shell:
	docker exec -it airbnb_dev_1 /bin/bash
