FROM node:12-stretch
RUN apt-get update && apt-get -y install python3-dev python3-pip python-pip groff less jq zip && \
  pip --no-cache-dir install awscli && \
  pip3 --no-cache-dir install awscli

ENV SERVERLESS serverless@1.58.0

RUN npm install --global $SERVERLESS
#RUN npm install --global serverless-s3-sync

WORKDIR /opt/app
