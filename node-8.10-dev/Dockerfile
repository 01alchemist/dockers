FROM ubuntu:18.04

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm"
RUN [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
RUN nvm install 8.10
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
RUN wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | apt-key add -
RUN apt-get update && apt-get install -y postgresql-client postgresql-client-common
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.7.0
RUN export PATH=$HOME/.yarn/bin:$PATH
CMD [ "node" ]
