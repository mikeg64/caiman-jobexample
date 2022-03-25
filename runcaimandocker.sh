#!/bin/bash

docker run -v $PWD:/home/caiman caiman:4.0  /caiman-matlab/run_caiman_standalone.sh /opt/mcr/v910
