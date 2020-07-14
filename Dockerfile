FROM alpine:latest

RUN apk add bash git docker curl python2 jq sqlite-dev

COPY dependencies dependencies
RUN chmod +x dependencies && ./dependencies && rm dependencies

ADD entrypoint /entrypoint
ADD bin /bin

ENTRYPOINT [ "/entrypoint" ]
