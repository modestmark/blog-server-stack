## Debian container for oldmanreffi.com project
FROM debian

MAINTAINER Mark Gagnon

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install python3 python3-pip python-dev git
RUN pip3 install django psycopg2

## TODO: section to automate pulling down project from gitlab
## RUN mkdir -p /root/.ssh/
## COPY .ssh/id_rsa /root/.ssh/
## COPY .ssh/id_rsa.pub /root/.ssh/
## RUN chmod -R 0700 /root/.ssh
## RUN echo "Host gitlab.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

WORKDIR /home
