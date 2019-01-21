FROM node:8.10
LABEL maintainer="01@01alchemist.com"

ENV VENDOR_DIR "/vendor"
ENV INSTALL_DIR $VENDOR_DIR/awscli

#install the dependencies
RUN apt-get update && apt-get install -y unzip groff

ENV AWS_CLI_URL "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip"
RUN curl --progress-bar -o /tmp/awscli-bundle.zip $AWS_CLI_URL && \
        unzip -qq -d $VENDOR_DIR /tmp/awscli-bundle.zip

RUN chmod +x $VENDOR_DIR/awscli-bundle/install
RUN $VENDOR_DIR/awscli-bundle/install -i $INSTALL_DIR
RUN chmod u+x $INSTALL_DIR/bin/aws
RUN ln -s $INSTALL_DIR/bin/aws /bin/aws
RUN aws configure set region "eu-central-1"
RUN rm -rf /tmp/awscli*

ENTRYPOINT [ "/bin/bash" ]
