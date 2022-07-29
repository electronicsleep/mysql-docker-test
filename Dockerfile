FROM ubuntu:22.04
RUN apt-get update && apt-get upgrade -y && \
  apt-get install apt-utils bash vim net-tools -y && \
  apt-get install mysql-server mysql-client -y
ADD mysql-run.sh .
ADD infradb.sql .
EXPOSE 3306
ENTRYPOINT ["bash", "mysql-run.sh"]
