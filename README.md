# docker

docker run --name chai-postgres -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_USER=chai -d postgres

to get a console
docker run -it --rm --link chai-postgres:postgres postgres sh -c 'exec psql -h "$POSTGRES_PORT_5432_TCP_ADDR" -p "$POSTGRES_PORT_5432_TCP_PORT" -U chai --password'
