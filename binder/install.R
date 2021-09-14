
### install regular packages

install.packages("reticulate") # python support in RMarkdown
install.packages("ggplot2") # for plotting
install.packages(c("rmarkdown", "caTools", "bitops")) # for knitting

### install bioconductor packages
install.packages("BiocManager")
BiocManager::install(c("RColorBrewer", "ggrepel", "scales", "genefilter", "pheatmap", "ggbeeswarm", "apeglm", "qvalue", "pcaExplorer", "AnnotationDbi", "DOSE", "enrichplot", "pathview", "clusterProflier"))

### install GitHub packages (tag = commit, branch or release tag)
# install.packages("devtools")
# devtools::install_github("user/repo", ref = "tag")