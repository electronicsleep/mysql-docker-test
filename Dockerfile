FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y
#RUN apt-get install bash vim net-tools curl apt-utils -y
RUN apt-get install mysql-server mysql-client -y
ADD mysql-run.sh .
ADD infradb.sql .
EXPOSE 3306
ENTRYPOINT ["bash", "mysql-run.sh"]
