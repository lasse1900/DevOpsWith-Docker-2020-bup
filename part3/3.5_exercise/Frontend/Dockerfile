FROM alpine:3.8
WORKDIR /app

ENV FRONT_URL=http://localhost:api

COPY . .
EXPOSE 5000
RUN apk add --no-cache libc6-compat && \
  apk add --update npm && \
  npm install && \
  npm run build && \ 
  npm install -g serve && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf ~/.npm/* && \
  addgroup app && \
  adduser -D -G app app && \
  chown -R app:app /app

USER app

CMD serve -s -l 5000 dist