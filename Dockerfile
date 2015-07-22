FROM java:7

ADD chai-1.0-SNAPSHOT.jar /data/chai-1.0-SNAPSHOT.jar

ADD config.yml /data/config.yml

CMD java -jar /data/chai-1.0-SNAPSHOT.jar server /data/config.yml

EXPOSE 8080


