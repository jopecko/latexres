FROM ubuntu:14.04

MAINTAINER jopecko <jopecko@gmail.com>

RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get install -y texlive-latex-extra

# by default, start commands in the /tmp directory of the container
WORKDIR /tmp
