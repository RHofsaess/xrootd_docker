FROM ubuntu:latest

MAINTAINER Robin Hofsaess <Robin.Hofsaess@kit.edu>

RUN apt -y update 
# necessary. Else, docker build fails...
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

# install server
RUN apt -y install xrootd-server 

# install client
RUN apt -y install xrootd-client 

# other software
RUN apt -y install vim sudo
