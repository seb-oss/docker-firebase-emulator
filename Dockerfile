FROM node:18-bookworm
WORKDIR /app

RUN apt update
RUN apt -y upgrade
RUN apt -y install default-jdk
RUN npm install -g firebase-tools

RUN firebase setup:emulators:pubsub

CMD ["firebase", "--project=seb-spark-project", "emulators:start"]
