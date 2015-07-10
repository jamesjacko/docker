FROM debian
RUN apt-get update &&  apt-get install -y vpnc xinetd ssh
COPY rdp-switch /etc/xinetd.d/rdp-switch
COPY vpnc.conf /etc/vpnc.conf
EXPOSE 3389
#RUN vpnc /etc/vpnc/vpnc.conf  --no-detach  --username gen192077

