# docker
docker images

#Printing

    docker build -t printing . // Create docker image
    docker run -d -p 3000:8000 printing // Start printing server, listening on port 3000 of host machine.
    docker exec <container_id> supervisorctl stop printing // Stop prining server
    docker exec <container_id> supervisorctl start printing //Start printing server


