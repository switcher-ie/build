FROM alpine:latest

RUN apk add bash git jq
RUN apk add docker --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community

ADD entrypoint /entrypoint
ADD bin /bin

ENTRYPOINT [ "/entrypoint" ]
