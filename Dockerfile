FROM alpine:3.9.5

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

RUN unzip awscliv2.zip

RUN sudo ./aws/install

# Show AWS CLI version
RUN aws --version

# Clean up
RUN rm -f awscliv2.zip