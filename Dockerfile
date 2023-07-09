FROM dannyben/ubuntu

RUN sudo apt-get -y update

WORKDIR /app

USER root
RUN curl -Ls get.dannyb.co/rush/setup | bash

USER ubuntu
RUN echo 'PS1="\\n\\n>> homebrew \\W \\$ "' >> /home/ubuntu/.bashrc
RUN rush clone dannyben --shallow --default
RUN rush homebrew
