FROM nvidia/cuda:10.2-cudnn7-devel

RUN apt update
RUN apt install sudo
