# # ************ FRONTEND *************

FROM ubuntu:20.04 
WORKDIR /usr/app

RUN apt-get update && \
  apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup_10.x | bash && \
  apt-get install -y nodejs && \
  rm -rf /var/lib/apt/lists/*


COPY . .
EXPOSE 5000
ENV API_URL=http://localhost:8000

CMD npm start