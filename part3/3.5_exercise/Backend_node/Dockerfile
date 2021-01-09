FROM node
WORKDIR /app

ENV FRONT_URL=http://localhost:80

COPY . ./
EXPOSE 8000
RUN apt-get update && apt-get install -y curl python && \
  curl -sL https://deb.nodesource.com/setup_10.x | bash && \
  apt install -y nodejs && \
  npm install && \
  useradd -m app && \
  chown -R app ./

CMD npm start