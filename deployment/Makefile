
start_thetaboard:
	docker-compose -f ../dockerfiles/webserver/docker-compose.yml -p ${GUARDIANNAME}THETABOARD up

kill_thetaboard:
	docker rm -f ${GUARDIANNAME}THETABOARD

build_thetaboard:
	docker-compose -f ../dockerfiles/webserver/docker-compose.yml build

push_thetaboard:
	docker-compose -f ../dockerfiles/webserver/docker-compose.yml push

pull_thetaboard:
	docker-compose -f ../dockerfiles/webserver/docker-compose.yml pull
