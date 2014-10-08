FROM debian:7.6

RUN apt-get update && apt-get install -y supervisor openssh-server locales nano
RUN echo 'zh_CN.UTF-8 UTF-8' > /etc/locale.gen && locale-gen
RUN mkdir -p /var/run/sshd /var/log/supervisor
RUN echo root:root | chpasswd

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22

CMD ["/usr/bin/supervisord"]
