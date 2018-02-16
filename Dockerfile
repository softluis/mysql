FROM ubuntu:latest

RUN \
    apt-get install bridge-utils \
    pkill docker \
    iptables -t nat -F \
    ifconfig docker0 down  \  
    brctl delbr docker0 \
    service docker restart \
    apt-get update && apt-get install -y mysql-server 
 
   

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["python", "/opt/app.py"]
