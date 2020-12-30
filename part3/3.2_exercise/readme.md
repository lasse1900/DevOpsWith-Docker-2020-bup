Exercise repo: https://github.com/lasse1900/rails-example-docker with Dockerfile and config.yml

1) Created an ordinary Heroku app
2) set app´s stack to container with following command:
    -	heroku stack:set container --app <app-name>
3) Connected to CircleCi webhost with github credentials
4) Go to CircleCI Project Settings and Environment Variables and set DOCKER_PASSWORD, DOCKER_LOGIN and HEROKU_API_KEY
5) Let CircleCi run the project