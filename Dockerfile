FROM bioconductor/bioconductor_docker:devel

RUN pip3 install cwltool

RUN R -e 'BiocManager::install("Rcwl")'
