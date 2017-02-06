FROM node:7.4
MAINTAINER Julien Poulton <julien@codingame.com>
COPY node_modules/ /
COPY parse_results.js /
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
