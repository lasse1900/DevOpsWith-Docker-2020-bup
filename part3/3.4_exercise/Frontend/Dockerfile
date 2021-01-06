# ************* FRONTEND ***********

FROM ubuntu:20.04 

ENV LC_ALL=C.UTF-8 

WORKDIR /app

RUN apt-get update && apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup_10.x | bash && \
  apt-get update && apt-get install -y nodejs && \
  useradd -m app && \
  chown -R app ./

USER app 

COPY . .

RUN npm install

EXPOSE 5000

ENV API_URL=http://localhost:8000

CMD npm start