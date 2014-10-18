FROM nswish/supervisor:20141018

RUN apt-get install -y mysql-server \
 && printf "\n[program:mysqld]\ncommand=mysqld\n" >> /etc/supervisor/conf.d/supervisord.conf

ADD ./my.cnf /etc/mysql/my.cnf

RUN  mysqld &\
     sleep 10 && mysql -e "delete from mysql.user;create user 'root'@'%' identified by 'root';grant all on *.* to 'root'@'%' with grant option;"

EXPOSE 3306
