FROM gcc:latest

RUN apt update -y && \
    apt install -y \
    git \
    emacs \
    python3 \
    python3-pip

# setup python
RUN ln -s $(which python3) /usr/bin/python

# install cmake with pip3 (installs the most recent version of cmake usuallly)
RUN pip3 install cmake


WORKDIR /cmake-examples
