FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 \
    python3-pip

RUN pip3 install jupyter
RUN pip3 install statsmodels
RUN pip3 install matplotlib
RUN pip3 install plotly
RUN pip3 install seaborn
RUN pip3 install sklearn
RUN pip3 install tensorflow

WORKDIR /.

ENTRYPOINT ["jupyter", "notebook", "--ip=*"]
