FROM nswish/supervisor:v1

RUN apt-get update && apt-get install -y subversion subversion-tools
RUN adduser svn && echo svn:svn | chpasswd && mkdir /home/svn/repo && chown svn:svn /home/svn/repo

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 3690

CMD ["/usr/bin/supervisord"]
