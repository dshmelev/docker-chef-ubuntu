FROM ubuntu:14.04
RUN apt-get -qq update
RUN apt-get -yqq install curl
RUN apt-get -yqq install postfix
RUN curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -v 12.6.0-1
RUN apt-get -yqq clean
