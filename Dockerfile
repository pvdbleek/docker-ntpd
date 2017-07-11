FROM alpine
RUN apk update
RUN apk add openntpd
RUN echo "servers pool.ntp.org" > /etc/ntpd.conf
ENTRYPOINT exec /usr/sbin/ntpd -d -f /etc/ntpd.conf -s
