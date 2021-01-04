FROM docker:dind

WORKDIR /usr
COPY fetch-github-repo.sh .
RUN apk add --no-cache git && chmod +x /usr/fetch-github-repo.sh

CMD ["/bin/ash", "/usr/fetch-github-repo.sh"]