FROM ubuntu:latest

RUN \
    ufw default allow outgoing \
    apt-get update -y
 
   

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["python", "/opt/app.py"]
