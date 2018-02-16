FROM ubuntu:latest

RUN \
    apt-get update && apt-get install -y apt-transport-https \
    apt-get install -y mysql-server 
 
   

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["python", "/opt/app.py"]
