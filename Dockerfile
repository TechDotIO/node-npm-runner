FROM node:7.4
MAINTAINER Julien Poulton <julien@codingame.com>
RUN ["npm", "install", "mocha", "-g"]
COPY entrypoint.sh /
COPY build.sh /project/build
ENTRYPOINT ["/entrypoint.sh"]
