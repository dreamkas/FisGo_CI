FROM maven:3.6.3-jdk-11

ARG GIT_USERNAME=user
ARG GIT_PASSWORD=1234

RUN apt-get update && \ 
    apt-get install -y \
    git
    
RUN cd tmp && \
    git clone --branch=experimental https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com/dreamkas/FisGoTests.git && \
    cd FisGoTests && \
    mvn test-compile