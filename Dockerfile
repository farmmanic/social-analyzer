FROM node:18.20.3-slim
WORKDIR /usr/src/app
COPY . .
RUN apk update && \
  apk add --no-cache firefox-esr && \
  npm install lodash && \
  npm install --loglevel=error
EXPOSE 9005
ENTRYPOINT [ "npm", "start", "--","--docker"]
