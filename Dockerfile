FROM alpine

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk --no-cache add ca-certificates minio

USER minio

EXPOSE 9000

ENTRYPOINT minio gateway s3 $S3_ENDPOINT
