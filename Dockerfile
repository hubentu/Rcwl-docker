FROM bioconductor/bioconductor_docker:devel

RUN apt-get update && \
    apt-get -y install nodejs && \
    apt-get clean

RUN pip3 install cwltool

RUN R -e 'BiocManager::install(c("hubentu/Rcwl", "RcwlPipelines"))'
