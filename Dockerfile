FROM ubuntu:latest 

RUN apt update && apt install xterm dbus-x11 -y
ENV NO_AT_BRIDGE=1

ENTRYPOINT [ "xterm"]