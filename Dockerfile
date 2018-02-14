FROM ubuntu
RUN  apt-get update \
     && apt-get install -y --no-install-recommends git curl ca-certificates nodejs npm \
     && rm -rf /var/lib/apt/lists/* 

WORKDIR  /usr/local/lib
RUN git clone --depth 1 https://github.com/4commerce-technologies-AG/meteor.git

WORKDIR meteor
RUN npm install raspberry -g

RUN nodejs -v
RUN npm -v



RUN ./scripts/generate-dev-bundle.sh
#RUN ln -s /usr/local/lib/meteor/meteor /usr/local/bin/meteor





#RUN git clone https://github.com/4commerce-technologies-AG/meteor.git 
#RUN $HOME/meteor/meteor --version

#RUN cd /usr/bin

#RUN ln -s $HOME/meteor/meteor meteor

#RUN $HOME
#RUN meteor create hello-world
#WORKDIR hello-world
#CMD meteor
