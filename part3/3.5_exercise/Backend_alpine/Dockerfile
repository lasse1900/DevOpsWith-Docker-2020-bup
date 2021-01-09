FROM alpine:3.8
WORKDIR /app

ENV FRONT_URL=http://localhost:80

COPY . ./
EXPOSE 8000
RUN apk add --no-cache libc6-compat && \
  apk add --update npm && \
  apk add --update curl python ca-certificates && \
  apk --no-cache add curl  && \
  apk add --update nodejs nodejs-npm && \
  npm install && \
  apk del curl && \ 
  rm -rf /var/lib/apt/lists/* && \
  addgroup app && \
  adduser -D -G app app && \
  chown -R app:app /app

USER app

CMD npm start