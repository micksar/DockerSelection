FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends apt-utils software-properties-common wget \
    && apt-get install -y build-essential python3 python3-distutils \
    && wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py \
    && python3 get-pip.py --trusted-host pypi.org --trusted-host files.pythonhosted.org
#RUN apt-get install python3.6 python-pip
#RUN python -m pip install pip --upgrade
#RUN python -m pip install wheel
#RUN apt-get install -y python3-numpy

ENV DEBIAN_FRONTEND noninteractive \
    && DBCONF_NONINTERACTIVE_SEEN true

RUN apt-get install -y python3-numpy

RUN mkdir /code

COPY requirements.txt /code
WORKDIR /code

RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org --no-cache-dir -r requirements.txt
