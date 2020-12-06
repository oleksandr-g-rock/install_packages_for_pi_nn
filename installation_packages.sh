#!/bin/bash

#update & upgrade system
sudo apt-get -qq -y update
sudo apt-get -qq -y dist-upgrade

#start install packages in OS for run object detection on ruspberry pi
sudo apt-get -qq -y install python-tk \
python3-dev \
python3-pip \
python3-venv \
libjpeg-dev \
libtiff5-dev \
libjasper-dev \
libpng12-dev \
libeigen3-dev \
libc-ares-dev \
libhdf5-dev \
libatlas-base-dev \
protobuf-compiler \
libopenmpi-dev \
liblapack-dev \
openmpi-bin \
libblas-dev \
libopenblas-base \
libopenblas-dev \
libatlas3-base \
gfortran \
libgfortran5 \
python-dev \
gcc \
cython \
git \
nano \
htop \
wget \
curl \
telnet

#update & upgrade system
sudo apt-get -qq -y update
sudo apt-get -qq -y dist-upgrade

#start install packages in python before install TF
sudo pip3 install keras_applications==1.0.8 --no-deps
sudo pip3 install keras_preprocessing==1.1.0 --no-deps
sudo pip3 install h5py==2.9.0
sudo pip3 install pybind11
pip3 install -U --user six wheel mock

sudo pip3 install pillow \
lxml \
jupyter \
matplotlib \
cython \
virtualenv \
opencv-python

#update & upgrade system
sudo apt-get -qq -y update
sudo apt-get -qq -y dist-upgrade

#start install TF from bynary from repo https://github.com/PINTO0309
wget "https://raw.githubusercontent.com/PINTO0309/Tensorflow-bin/master/tensorflow-2.3.1-cp37-none-linux_armv7l_download.sh"
sh ./tensorflow-2.3.1-cp37-none-linux_armv7l_download.sh
sudo pip3 -y uninstall tensorflow
sudo -H pip3 install tensorflow-2.3.1-cp37-none-linux_armv7l.whl
sudo pip3 install --upgrade tensorflow

#check version TF
sudo python3 -c 'import tensorflow as tf; print(tf.__version__)'

#update system after setup setup
sudo apt-get -qq -y update
sudo apt-get -qq -y dist-upgrade

#remove old files
sudo rm -rf tensorflow-2.3.1-cp37*

# install Keras
sudo pip3 install keras
