#========================#
#==   DATABASE SETUP   ==#
#========================#

up:
	docker compose up -d

stop:
	docker compose stop

destroy:
	docker compose rm -fs -v && \
	sudo rm -Rf postgresql pgadmin
