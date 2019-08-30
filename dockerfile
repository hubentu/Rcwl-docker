FROM bioconductor/devel_base2

MAINTAINER qiang.hu@roswellpark.org

RUN apt-get update && \
    apt-get -y install nodejs python3-pip && \
    apt-get clean

RUN pip3 install cwltool

ADD install.R /tmp/
RUN R -f /tmp/install.R
    
