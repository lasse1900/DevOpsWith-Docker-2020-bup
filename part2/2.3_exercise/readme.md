1) First created images as before in ex1.12
2) front image from: https://github.com/docker-hy/frontend-example-docker
3) backend image from: https://github.com/docker-hy/backend-example-docker
4) run build commands for images
5) Then run docker-compose.yml

Front:

    FROM ubuntu:20.04 

    WORKDIR /dist

    RUN apt-get update && apt-get install -y curl
    RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
    RUN apt-get update && apt-get install -y nodejs

    COPY . .

    RUN npm install

    EXPOSE 5000

    ENV API_URL=http://localhost:8000

    CMD npm start

image build command: docker build -t back-img .

Back:

    FROM ubuntu:20.04 

    WORKDIR /dist

    RUN apt-get update && apt-get install -y curl
    RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
    RUN apt-get update && apt-get install -y nodejs

    COPY . .

    RUN npm install

    EXPOSE 8000

    ENV FRONT_URL=http://localhost:5000

    CMD npm start

image build command: docker build -t front-img .
