From alpine:3.12

RUN apk update && apk add bash
RUN apk add squid net-tools tcpdump

COPY squid.conf /etc/squid/
COPY allowdomain.txt /etc/squid/

Expose 3128

CMD ["squid","-N"]