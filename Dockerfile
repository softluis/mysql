FROM ubuntu:latest

RUN \
     sudo apt-get install -qy mysql-server
 
   

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["python", "/opt/app.py"]
