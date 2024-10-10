FROM debian:9.5-slim

WORKDIR /
COPY . /

RUN echo ""

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
