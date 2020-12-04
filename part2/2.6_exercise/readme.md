1. added locally postsgres image with Dockerfile FROM postgress
2. run docker builds with frontend, backend, redis, and postgres

- docker build -t frontend .
- docker build backend .
- docker build redis .
- docker build postgres .

3. added docker-compose.yml
4. run docker-compose up
