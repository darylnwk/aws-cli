FROM alpine:3.9.5

RUN apk --update --no-cache add \
    python \
    py-pip \
    zip \
    && pip install --no-cache-dir awscli==1.16.138 \
    && apk del py-pip \
    && rm -rf /var/cache/apk/* /root/.cache/pip/*