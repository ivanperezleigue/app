# This Dockerfile creates a docker image for an already-built
# DemocracyOS app; the container WILL NOT build it for you.

# The container generated by this Dockerfile is intended to be published
# in the docker registry for being used to run a container directly

FROM democracyos/ubuntu-base
MAINTAINER Guido Vilariño <guido@democracyos.com>

COPY . /usr/src/democracyos/app/
WORKDIR /usr/src/democracyos/app

# Add any custom env vars here
# ENV FOO=foo \
#     BAR=bar

# If you change the port, remember to set the proper ENV var to match.
EXPOSE 80

CMD node index.js