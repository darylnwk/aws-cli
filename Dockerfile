FROM alpine:3.9.5

RUN apk add --no-cache python curl

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws

RUN export PATH=~/bin:$PATH

# Show AWS CLI version
RUN aws --version

# Clean up
RUN rm -rf awscli-bundle awscli-bundle.zip