FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y cowsay
RUN apt-get install -y fortune
ENTRYPOINT ["/usr/games/cowsay"]
CMD ["Docker is so awesomoooooo!"]
ONBUILD RUN  /usr/games/fortune | /usr/games/cowsay
