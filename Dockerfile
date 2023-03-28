FROM ubuntu:latest 

RUN apt update && apt install xterm dbus-x11 -y

WORKDIR /home

ENTRYPOINT [ "xterm"]