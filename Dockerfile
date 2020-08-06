# small alpine image
FROM alpine

#add usefull tools
RUN apk add --update --no-cache  \
      git \
      findutils \
      bash \
      unzip \
      curl \
      wget \
      nodejs-current \
      nodejs-npm \
      openjdk8-jre \
      openssh-client \
      perl \
      jq

# install sfdx from npm
RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core


# install sgd from npm - https://github.com/scolladon/sfdx-git-delta
RUN node --version
RUN npm install sfdx-git-delta@latest --global
RUN sgd --version
