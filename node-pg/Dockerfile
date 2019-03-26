FROM node:10.5.0

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
RUN wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | apt-key add -
RUN apt-get update && apt-get install -y postgresql-client postgresql-client-common
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.7.0
RUN export PATH=$HOME/.yarn/bin:$PATH
RUN curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > /usr/bin/cc-test-reporter
CMD [ "node" ]
