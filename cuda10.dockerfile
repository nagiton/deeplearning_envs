FROM nvidia/cuda:10.2-cudnn7-devel

RUN apt update
RUN apt install sudo

COPY install_essentials.sh /tmp/install_essensitals.sh
RUN yes "Y" | /tmp/install_essensitals.sh

COPY install_libraries.sh /tmp/install_libraries.sh
RUN yes "Y" | /tmp/install_libraries.sh

CMD ["bash"]