FROM node:20-alpine
WORKDIR /app

RUN apk add --no-cache \
    openjdk17 \
    bash \
    curl \
    libc6-compat

RUN npm install -g firebase-tools
RUN firebase setup:emulators:pubsub

CMD ["firebase", "--project=seb-spark-project", "emulators:start"]
