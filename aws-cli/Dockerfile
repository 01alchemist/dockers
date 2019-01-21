FROM amazonlinux
LABEL maintainer="01@01alchemist.com"

ENV VENDOR_DIR "/vendor"
ENV INSTALL_DIR $VENDOR_DIR/awscli

#install the dependencies
RUN yum -y install unzip groff tar gzip

# Replace shell with bash so we can source files
SHELL ["/bin/bash", "-c"]

RUN mkdir /root/.nvm
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 8.15.0

#  Install NodeJS via NVM
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

# Install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.13.0
RUN export PATH=$HOME/.yarn/bin:$PATH

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
