#############################
# Author: Luke O'Connor     #
# edited: 2025-05-07        #
#############################

FROM rocker/rstudio:4.2.1

ENV TZ=America/Chicago

#put R package script in image
ADD install_r_packages.R /install_r_packages.R
USER root 
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        libfontconfig1-dev\
        libmagick++-dev \
#        libpng12-dev \
        libudunits2-dev \
        libxml2-dev \ 
        zlib1g-dev \ 
    && apt-get clean

#run relevant R package installs
RUN Rscript /install_r_packages.R