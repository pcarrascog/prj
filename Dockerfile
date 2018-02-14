FROM ubuntu
RUN  apt-get update \
     && apt-get dist-upgrade -y \
     && apt-get install -y nodejs npm  \
#     && apt-get install -y wget curl \
     && rm -rf /var/lib/apt/lists/* 

#RUN npm install raspberry -g

#RUN git 
