FROM continuumio/miniconda3

SHELL ["/bin/bash", "-c"]

ARG DEPENDENCIES_CONDA="numpy conda-build"
ARG DEPENDENCIES_PIP="teamcity-messages"

RUN conda update -n base -c defaults conda && \
    conda create -n python35 python=3.5 $DEPENDENCIES_CONDA && \
    source activate python35 && pip install $DEPENDENCIES_PIP && \
    conda deactivate && \
    conda create -n python36 python=3.6 $DEPENDENCIES_CONDA && \
    source activate python36 && pip install $DEPENDENCIES_PIP && \
    conda deactivate && \
    conda create -n python37 python=3.7 $DEPENDENCIES_CONDA && \
    source activate python37 && pip install $DEPENDENCIES_PIP && \
    conda deactivate && \
    conda config --add channels http://www.desy.de/~cbehrens/doocsconda/

COPY src src
COPY test test
COPY setup.py .
COPY README.md .

ENTRYPOINT ["/bin/bash", "-c"]
