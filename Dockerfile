FROM alpine:latest

RUN apk --no-cache add curl

ADD *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/start.sh"]
CMD [""]
