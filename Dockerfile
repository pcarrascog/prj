FROM ubuntu
RUN  apt-get update \
     && apt-get dist-upgrade -y \
#     && apt-get install nodejs npm -y 
     && apt-get install -y wget \
     && rm -rf /var/lib/apt/lists/* 
RUN wget -O - https://raw.githubusercontent.com/audstanley/NodeJs-Raspberry-Pi/master/Install-Node.sh | bash     
#RUN npm install respberry -g

#RUN git 
