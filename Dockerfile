FROM ubuntu:latest

RUN \
     mkdir teste
 
   

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["python", "/opt/app.py"]
