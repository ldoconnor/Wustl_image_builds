#############################
# Author: Luke O'Connor     #
# edited: 2026-03-17        #
#############################

FROM rocker/rstudio:4.5.1


USER root 
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        libfontconfig1-dev\
        libhdf5-dev\
        libmagick++-dev \
#        libpng12-dev \
        libudunits2-dev \
        libxml2-dev \ 
        libcurl4-openssl-dev\ 
        libssl-dev\ 
        libxml2-dev\
        zlib1g-dev \ 
    && apt-get clean
     
# put R package script in image
ADD install_r_packages.R /install_r_packages.R

RUN R -e "install.packages( pkgs = c('devtools'))"
RUN R -e "library( 'devtools' )"

RUN R -e "install.packages( pkgs = c('tidyverse'))"
RUN R -e "library( 'tidyverse')"

RUN R -e "install.packages( pkgs = c('enrichR'))"
RUN R -e "library( 'enrichR')"
# Run relevant R package installs
RUN Rscript /install_r_packages.R