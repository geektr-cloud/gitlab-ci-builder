FROM node:8-stretch

COPY ./docker-entrypoint.sh /

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
      openssh-client wget zip unzip git tree gcc \
      g++ build-essential cmake apt-transport-https \
      ca-certificates openssl && \
    rm -rf /var/lib/apt/lists/* && \
    yarn global add cnpm && \
    mkdir -p ~/.ssh

ENTRYPOINT ["/docker-entrypoint.sh"]
