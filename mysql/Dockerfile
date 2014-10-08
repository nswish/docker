FROM nswish/supervisor:v1

RUN apt-get update && apt-get install -y mysql-server

ADD ./my.cnf /etc/mysql/my.cnf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN  mysqld &\
     sleep 10 && mysql -e "delete from mysql.user;create user 'root'@'%' identified by 'root';grant all on *.* to 'root'@'%' with grant option;"

EXPOSE 3306
