#! /bin/bash

mkdir /usr/app
cd /usr/app

echo "Input Github repo-url:"
read GITHUB_URL
echo $GITHUB_URL
git clone $GITHUB_URL .

FILE="Dockerfile"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo " --- $FILE missing --- !"
  exit 1
fi

echo "Insert Docker username:"
read DOCKER_USER
docker login -u $DOCKER_USER

echo "Insert Docker repo name:"
read DOCKER_REPO

echo "Insert image tag name:"
read IMAGE_NAME

docker build -t $DOCKER_USER/$DOCKER_REPO:$IMAGE_NAME .
docker push $DOCKER_USER/$DOCKER_REPO:$IMAGE_NAME

cd /usr
rm -rf app
