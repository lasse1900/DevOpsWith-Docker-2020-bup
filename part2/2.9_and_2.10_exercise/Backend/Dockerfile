
# ************* BACKEND ***********

FROM ubuntu:20.04 
WORKDIR /usr/app

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get update && apt-get install -y nodejs

COPY . .
RUN npm install
EXPOSE 8000
ENV FRONT_URL=http://localhost:5000

CMD npm start
