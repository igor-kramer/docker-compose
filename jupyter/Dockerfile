FROM continuumio/miniconda3:4.3.27

ENV ACCEPT_INTEL_PYTHON_EULA=yes

WORKDIR /home/notebooks

ADD ./requirements.txt /app/

RUN apt-get update \
    && apt-get clean \
    && apt-get update -qqq \
    && apt-get install -y -q g++

RUN conda config --add channels intel \    
    && conda install -y -c intel intelpython

RUN conda install jupyter \
    && pip install --upgrade pip

RUN pip install -r /app/requirements.txt
RUN ln -s /usr/lib/x86_64-linux-gnu/libffi.so.6 /usr/lib/x86_64-linux-gnu/libffi.so.7
ADD ./jupyter_notebook_config.json /root/.jupyter/
CMD jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root