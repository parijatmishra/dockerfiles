FROM ubuntu:bionic
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g npm
RUN apt-get remove --purge -y npm
RUN ln -sfn /usr/local/bin/npm /usr/bin/npm
RUN npm install -g yarn
CMD /bin/bash
