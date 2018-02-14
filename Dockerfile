FROM ubuntu
RUN  apt-get update \
     && apt-get dist-upgrade -y \
     && apt-get install nodejs npm -y \
     && rm -rf /var/lib/apt/lists/* 
     
RUN npm install respberry -g

RUN git 
