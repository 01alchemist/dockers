FROM node:10.5.0

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.7.0
RUN export PATH=$HOME/.yarn/bin:$PATH
RUN curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > /usr/bin/cc-test-reporter
RUN chmod +x /usr/bin/cc-test-reporter
CMD [ "node" ]
