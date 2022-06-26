FROM ubuntu:21.04
RUN apt-get update && apt-get upgrade -y && \
  apt-get install bash vim net-tools apt-utils -y && \
  apt-get install mysql-server mysql-client -y
ADD mysql-run.sh .
ADD infradb.sql .
EXPOSE 3306
ENTRYPOINT ["bash", "mysql-run.sh"]
