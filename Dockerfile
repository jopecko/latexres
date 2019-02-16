FROM ubuntu:xenial

MAINTAINER jopecko <jopecko@gmail.com>

RUN apt-get update -q \
  && apt-get install -qy texlive-full
#  && apt-get -y upgrade \
#  && apt-get install -y texlive-latex-extra

# by default, start commands in the /tmp directory of the container
WORKDIR /tmp
