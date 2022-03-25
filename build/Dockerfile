# Use the latest ubuntu image as base for the new image
# ubuntu is the image name and latest is a tag that 
# references a particular version of the image.
# In this case latest is always the latest LTS image
# at the time of writing this, it's 16.04.

#build using
# docker build -t caiman:1.0 .



#docker run -v /home/mike/proj/caiman-docker/caiman-test:/home/caiman/caiman-task caiman:1.0 caiman-matlab/run_caimansaasexample.sh MATLAB_Runtime/v99
# docker run -v /home/mike/proj/caiman-docker/caiman-test:/home/caiman caiman:1.0 /caiman-matlab/run_caimansaasexample.sh /MATLAB_Runtime/v99






#FROM debian:buster-slim
FROM ubuntu:latest

# Install packages (remove repo info to reduce image size)
RUN apt-get -q update && apt-get install -y --no-install-recommends \
    wget \
    unzip \
    libx11-6 \
    libxt6 \
    && rm -rf /var/lib/apt/lists/* && apt-get clean





#RUN ["cd", "/usr/local"]
COPY caiman-matlab.tgz caiman-matlab.tgz
RUN tar -zxvf caiman-matlab.tgz

### start of new section mkg25/11/2021
# Install MATLAB runtime
# https://uk.mathworks.com/products/compiler/matlab-runtime.html
#ARG MATLAB_RUNTIME_URL="https://ssd.mathworks.com/supportfiles/downloads/R2020b/Release/5/deployment_files/installer/complete/glnxa64/MATLAB_Runtime_R2020b_Update_5_glnxa64.zip"

ARG MATLAB_RUNTIME_URL="https://ssd.mathworks.com/supportfiles/downloads/R2021a/Release/5/deployment_files/installer/complete/glnxa64/MATLAB_Runtime_R2021a_Update_5_glnxa64.zip"



# Download installer
# https://uk.mathworks.com/help/compiler_sdk/dotnet/install-the-matlab-runtime.html
WORKDIR /mcr-install
#COPY MATLAB_Runtime_R2021a_Update_5_glnxa64.zip matlab.zip
RUN wget --quiet -O matlab.zip --no-check-certificate $MATLAB_RUNTIME_URL
RUN unzip -qo matlab.zip && rm -f matlab.zip
# Install (and remove installer)
ARG MCRROOT="/opt/mcr"
RUN mkdir -p $MCRROOT \
    && ./install -mode silent -agreeToLicense yes -destinationFolder $MCRROOT
WORKDIR /
RUN rm -rf /mcr-install
ENV LD_LIBRARY_PATH="$MCRROOT/v99/runtime/glnxa64:$MCRROOT/v99/bin/glnxa64:$MCRROOT/v99/sys/os/glnxa64:$MCRROOT/v99/extern/bin/glnxa64"

### end of new section mkg25/11/2021


#COPY MATLAB_Runtime.tgz MATLAB_Runtime.tgz
#RUN tar -zxvf MATLAB_Runtime.tgz



# Create a new system user
RUN useradd -ms /bin/bash caiman


# Change to this new user
USER caiman

# Set the container working directory to the user home folder
WORKDIR /home/caiman



RUN ["mkdir", "caiman-task"]








