FROM ubuntu:18.04

# environment variables
ENV http_proxy http://10.239.4.80:913
ENV https_proxy http://10.239.4.80:913

RUN apt-get update && apt-get install -y mysql-server vim
COPY mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
VOLUME /var/lib/mysql

#RUN /etc/init.d/mysql start
EXPOSE 3306 33060
CMD ['/etc/init.d/mysql start']

