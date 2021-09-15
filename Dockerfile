FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install bash net-tools nginx vim curl apt-utils -y
RUN apt-get install mysql-server mysql-client -y
ADD mysql-start.sh .
ADD infradb.sql .
EXPOSE 3306
ENTRYPOINT ["bash", "mysql-start.sh"]
