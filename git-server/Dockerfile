FROM nswish/supervisor:v0

RUN apt-get update && apt-get install -y git
RUN adduser git && echo git:git | chpasswd && sed -i 's/\(git.*\)\(\/bin\/bash\)/\1\/usr\/bin\/git-shell/' /etc/passwd

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 9418

CMD ["/usr/bin/supervisord"]
