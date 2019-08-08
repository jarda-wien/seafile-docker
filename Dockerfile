FROM ubuntu:bionic

ARG seafile_version=7.0.4
#TODO: is curl needed as a dependency for the application? if just for downloading -> make a separate stage
RUN apt-get update && apt-get install -y curl
RUN mkdir /seafile \
    && curl https://download.seadrive.org/seafile-server_${seafile_version}_x86-64.tar.gz \
    | tar xz  -C /seafile/


EXPOSE 80
