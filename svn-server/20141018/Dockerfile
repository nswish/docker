FROM nswish/supervisor:20141018

RUN apt-get update && apt-get install -y subversion subversion-tools \
 && useradd -m svn && echo svn:svn | chpasswd && mkdir /home/svn/repo && chown svn:svn /home/svn/repo \
 && printf "\n[program:svnserve]\ncommand=svnserve -d --foreground -r /home/svn/repo\nuser=svn\nstderr_logfile=/home/svn/stderr.txt\n" >> /etc/supervisor/conf.d/supervisord.conf

EXPOSE 3690

CMD ["/usr/bin/supervisord"]
