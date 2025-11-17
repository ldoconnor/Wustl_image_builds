#############################
# Author: Luke O'Connor     #
# edited: 2025-11-17        #
#############################

FROM rocker/rstudio:4.2.1


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
#install packages of CRAN
RUN R -e "install.packages( pkgs = c('here',\
                                    'ggplot2',\
                                    'matrixStats',\
                                    'devtools',\
                                    'knitr',\
                                    'patchwork',\
                                    'BiocManager',\
                                    'Seurat',\
                                    'dplyr',\
                                    'openxlsx',\
                                    'stringr'),\
                                ask = FALSE,\
                                dependencies = TRUE,\
                                checkBuilt = TRUE,\
                                repos= 'http://cran.rstudio.com/')"

#install bioconductor packages

RUN R -e "BiocManager::install( pkgs = c('RColorBrewer',\
                                        'ComplexHeatmap',\
                                        'GenomeInfoDb',\
                                        'GenomicRanges',\
                                        'Biobase',\
                                        'IRanges',\
                                        'XVector',\
                                        'Biostrings',\
                                        'GenomicRanges',\
                                        'RhtsLib',\
                                        'SummarizedExperiment',\
                                        'KEGGREST',\
                                        'annotate',\
                                        'GenomicAlignments',\
                                        'AnnotationDbi',\
                                        'org.Mm.eg.db',\
                                        'GO.db',\
                                        'goseq',\
                                        'biomart'))"
