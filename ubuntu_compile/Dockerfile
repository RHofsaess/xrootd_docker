FROM ubuntu:latest

MAINTAINER Robin Hofsaess <Robin.Hofsaess@kit.edu>

RUN apt -y update 

# necessary. Else, docker build fails...
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

RUN apt-get clean autoclean

RUN apt-get update 
RUN apt-get install -y apt-utils aptitude

# install packages
RUN apt-get install -y expect perl policycoreutils
RUN apt-get install -y libreadline6-dev #readline-devel #libreadline6
Run apt-get install -y libxml2-dev # libxml2-devel
Run apt-get install -y python2-dev python2 python-dev-is-python3 # python-devel
Run apt-get install -y python3-dev # python3-devel
RUN apt-get install -y curl libcurl4-openssl-dev # to be tested!!
RUN apt-get install -y libmacaroons0 libmacaroons-dev # libmacaroons, libmacaroons-devel
RUN apt-get install -y libjson-c5 libjson-c-dev # json-c, json-c-devel  # to be tested
RUN apt-get install -y uuid uuid-dev # uuid libuuid-devel
RUN apt-get install -y libssl-dev # openssl-devel
RUN apt-get install -y davix libdavix0v5 davix-dev # davix-libs davix-devel # to be tested
RUN apt-get install -y voms-clients voms-dev # voms voms-devel
RUN apt-get install -y fuse libfuse-dev # fuse fuse-devel
RUN aptitude install -y scitokens-cpp # scitokens-cpp-devel not found 
RUN apt-get install -y git cmake make gcc g++ # cmake3 does not exist 
RUN apt-get install -y autoconf automake libtool yasm help2man

RUN apt-get install -y python3-pip  # for cmake

RUN apt-get install -y vim


# install server
#RUN apt -y install xrootd-server

# install client
#RUN apt -y install xrootd-client

# other software
#RUN apt -y install vim sudo
