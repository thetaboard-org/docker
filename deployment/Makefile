PORT ?= "8000"

start_thetaboard:
	docker compose -f ../dockerfiles/webserver/docker-compose.yml -p ${GUARDIANNAME}THETABOARD up

build_thetaboard:
	docker compose -f ../dockerfiles/webserver/docker-compose.yml build

push_thetaboard:
	docker compose -f ../dockerfiles/webserver/docker-compose.yml push

kill_thetaboard:
	docker rm -f ${GUARDIANNAME}THETABOARD


# DEV target only
run_dev_mode:
	docker rm -f ${GUARDIANNAME}THETABOARD
	docker run --net=bridge --name ${GUARDIANNAME}THETABOARD -e NODE_PASSWORD="${NODE_PASSWORD}"\
	 -v ${GUARDIANNAME}THETABOARD:/home/node/theta_mainnet \
	 -v $(shell pwd)/webserver:/home/node/app/webserver \
	 -p8000:8000 -p8001:8001 maurinl/thetaboard

