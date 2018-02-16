FROM ubuntu:latest

RUN \
    apt-get update \
    && apt-get install -qy \
    apt-get install yum \
    apt-get install python-mysqldb \
	yum install mysql-python \
	mysql -u root -p \
	mysql&gt; CREATE DATABASE pythonspot; \
	mysql&gt; USE pythonspot; \
	
	CREATE TABLE IF NOT EXISTS examples (
  id int(11) NOT NULL AUTO_INCREMENT,
  description varchar(45),
  PRIMARY KEY (id)
); \

INSERT INTO examples(description) VALUES ("Hello World"); \
INSERT INTO examples(description) VALUES ("MySQL Example"); \
INSERT INTO examples(description) VALUES ("Flask Example"); \


COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["python", "/opt/app.py"]