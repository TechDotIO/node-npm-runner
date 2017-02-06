FROM node:7.4
MAINTAINER Julien Poulton <julien@codingame.com>
RUN "npm install mocha"
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
