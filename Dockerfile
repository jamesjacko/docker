FROM java:7

ADD chai-1.0-SNAPSHOT.jar /data/chai-1.0-SNAPSHOT.jar

ADD config.yml /data/config.yml

CMD java -jar /data/chai-1.0-SNAPSHOT.jar server /data/config.yml -db $PG_PORT_5432_TCP_ADDR:$PG_PORT_5432_TCP_PORT -ls $LOGSTASH_PORT_12201_UDP_ADDR:$LOGSTASH_PORT_12201_UDP_PORT

EXPOSE 8080


