FROM continuumio/miniconda3

SHELL ["/bin/bash", "-c"]

ARG DEPENDENCIES_CONDA="h5py natsort numpy mock coverage conda-build"
ARG DEPENDENCIES_PIP="pyhamcrest teamcity-messages"

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
    conda create -n python27 python=2.7 $DEPENDENCIES_CONDA && \
    source activate python27 && pip install $DEPENDENCIES_PIP && \
    conda deactivate && \
    conda config --add channels http://doocspkgs.desy.de/pub/flashconda/

COPY src src
COPY tests tests
COPY setup.py .
COPY README.md .
COPY run_tests_for .

ENTRYPOINT ["/bin/bash", "-c"]
