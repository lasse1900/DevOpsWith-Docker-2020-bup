FROM alpine:3.8 as build-stage
WORKDIR /usr/app

RUN apk add --no-cache git nodejs nodejs-npm && \
  git clone https://github.com/docker-hy/frontend-example-docker.git . && \
  npm install && \
  npm run build

FROM alpine:3.8
RUN apk add --no-cache git nodejs nodejs-npm && \
  npm install -g serve
COPY --from=build-stage /usr/app/dist /usr/app/dist
WORKDIR /usr/app/
CMD serve -s -l 5000 dist 