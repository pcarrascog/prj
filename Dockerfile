FROM ubuntu
RUN  apt-get update \
     && apt-get dist-upgrade -y \
     && rm -rf /var/lib/apt/lists/*
