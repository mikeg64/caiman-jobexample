#!/bin/bash

#https://hub.docker.com/repository/docker/mikeg64/caiman
#Either 
# 1. copy and paste the command below 
# 2. run the script file directly from the  folder containing the jobfile
# May need to update the $PWD with the directory path for the working directory

docker run -v $PWD:/home/caiman mikeg64/caiman:4.0  /caiman-matlab/run_caiman_standalone.sh /opt/mcr/v910
