
start_thetaboard:
	docker-compose -f ../dockerfiles/webserver/docker-compose.yml -p ${GUARDIANNAME}THETABOARD up -d

kill_thetaboard:
	docker-compose -f ../dockerfiles/webserver/docker-compose.yml -p ${GUARDIANNAME}THETABOARD down

export TAG = latest
build_thetaboard:
	docker-compose -f ../dockerfiles/webserver/docker-compose.yml build
	# create latest TAG as well
	docker tag maurinl/thetaboard:${TAG} maurinl/thetaboard:latest

push_thetaboard:
	docker push maurinl/thetaboard --all-tags

pull_thetaboard:
	docker-compose -f ../dockerfiles/webserver/docker-compose.yml pull
