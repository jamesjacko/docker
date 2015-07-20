# docker

docker run --name chai-postgres -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_USER=chai -d postgres


Then to run CHAI

docker run --name chai-app --link chai-postgres:postgres -d java
