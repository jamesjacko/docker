# docker

## to build the project :-

docker build -t chai-backend ./

## To run the project

docker run   -it -p 8081:8080  --link chai-postgres:pg --link ecstatic_hawking:logstash chai-backend


