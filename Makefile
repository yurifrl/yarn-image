all:
	docker-compose build
	docker push yurifl/yarn:latest
