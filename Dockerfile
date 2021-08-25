FROM debian
COPY . /home/algorithm/pose
RUN apt-get update \ 
    && apt-get install -y python3 \
    && apt-get install -y python3-pip \ 
    && apt-get install -y python3-scipy \
    && apt-get install -y python3-tk \  
    && apt install -y libgl1-mesa-glx \ 
    && apt-get install -y build-essential \ 
    && apt-get install -y gfortran \ 
    && apt-get install -y libblas-dev liblapack-dev python3-dev libatlas-base-dev \
    && apt-get install -y libyaml-dev \
    && apt-get install -y libglib2.0-dev \
    && python3 -m pip install cython \
    && pip3 install numpy --upgrade \
    && pip3 install torch==1.8 torchvision cython_bbox
WORKDIR /home/algorithm/pose
RUN ["python3", "/home/algorithm/pose/setup.py", "build", "develop"]
