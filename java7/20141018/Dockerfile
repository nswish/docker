FROM nswish/supervisor:20141018

ADD jdk-7u67-linux-x64.tar.gz /opt

RUN ln -s /opt/jdk1.7.0_67/bin/java /usr/bin/java \
 && ln -s /opt/jdk1.7.0_67/bin/javac /usr/bin/javac \
 && echo 'export JAVA_HOME=/opt/jdk1.7.0_67' > /etc/profile.d/java_home.sh

CMD ["/usr/bin/supervisord"]
