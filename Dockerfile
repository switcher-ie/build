FROM alpine:latest

RUN apk add bash docker git jq

ADD entrypoint /entrypoint
ADD bin /bin

ENTRYPOINT [ "/entrypoint" ]
