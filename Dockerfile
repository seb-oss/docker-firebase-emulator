FROM node:21-bookworm
WORKDIR /app

RUN apt update
RUN apt -y install openjdk-17-jdk
RUN npm install -g firebase-tools

RUN firebase setup:emulators:pubsub

CMD ["firebase", "--project=seb-spark-project", "emulators:start"]
