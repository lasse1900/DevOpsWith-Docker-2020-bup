FROM node
WORKDIR /app

ENV FRONT_URL=http://localhost:api

COPY . .
EXPOSE 5000
RUN apt-get update && apt-get install -y curl python && \
  curl -sL https://deb.nodesource.com/setup_10.x | bash && \
  apt install -y nodejs && \
  npm install && \
  npm run build && \
  npm install -g serve  && \ 
  useradd -m app && \
  chown -R app ./

USER app

CMD serve -s -l 5000 dist