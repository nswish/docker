FROM debian:7.6

RUN apt-get update && apt-get install -y supervisor openssh-server locales vim sudo \
 && echo 'zh_CN.UTF-8 UTF-8' > /etc/locale.gen && locale-gen \
 && mkdir -p /var/run/sshd /var/log/supervisor \
 && echo root:root | chpasswd \
 && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22

CMD ["/usr/bin/supervisord"]
