
install.packages(
  pkgs = c( 'rmarkdown',
            'here',
            'stats',
            'remotes',#'devtools',
            'future',
            'BiocManager',
            'R.utils',
            'knitr',
            'matrixStats',
            'stringr',
            'openxlsx',
            'dplyr',
            'tidyverse',
            'Seurat',
            'patchwork',
            'SCtransform',
            'Azimuth',
            'SeuratObject',
            'sf',
            'sp',
            'clustree',
            'enrichR'
    
  ),
  ask = FALSE,
  dependencies = TRUE,
  checkBuilt = TRUE,
  repos = 'http://cran.rstudio.com/'
)

install.packages('ggplot2',
                 version = '3.4.4')




BiocManager::install(
  pkgs = c( 'org.Mm.eg.db',
            'org.Hs.eg.db',
            'glmGamPoi',
            'BiocGenerics', 
            'DelayedArray', 
            'DelayedMatrixStats',
            'limma', 
            'lme4', 
            'S4Vectors',
            'SingleCellExperiment',
            'SummarizedExperiment', 
            'batchelor', 
            'HDF5Array',
            'ggrastr'
            )
)

remotes::install_github("bnprks/BPCells/r")
devtools::install_github('cole-trapnell-lab/monocle3')
remotes::install_github("satijalab/seurat", "seurat5", quiet = TRUE)
remotes::install_github("satijalab/seurat-data", quiet = TRUE)
remotes::install_github("satijalab/azimuth", quiet = TRUE)
remotes::install_github("satijalab/seurat-wrappers", quiet = TRUE)