FROM alpine:3.9.5

RUN apk --update --no-cache add \
    musl-dev \
    gcc \
    python3 \
    python3-dev \
    zip \
    && pip3 install --no-cache-dir --upgrade pip urllib3==1.25.4 awscli==1.19.84 aws-sam-cli==1.23.0 \
    && apk del \
    gcc \
    musl-dev \
    && rm -rf /var/cache/apk/* /root/.cache/pip/*