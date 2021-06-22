# Dockerfile 
This docker come with :
 - Downloaded guardian node binary
 - ThetaBoard webserver

### Pre-requisite
Docker should have at least 4gb of runtime memory,<br>
Mac: https://docs.docker.com/docker-for-mac/#:~:text=Memory%3A%20By%20default%2C%20Docker%20Desktop,swap%20file%20size%20as%20needed. <br>
Windows: https://docs.docker.com/docker-for-windows/#:~:text=Memory%3A%20By%20default%2C%20Docker%20Desktop,swap%20file%20size%20as%20needed. <br>

### Dev to resources :
`cd deployment` <br>
Build `make build_thetaboard .`<br>
Push `make push_thetaboard`<br>
Test using `make start_thetaboard`<br>



