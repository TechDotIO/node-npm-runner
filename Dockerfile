FROM node:7.4
MAINTAINER Julien Poulton <julien@codingame.com>
RUN ["npm", "install", "mocha", "-g"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
