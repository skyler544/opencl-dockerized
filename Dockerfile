FROM ubuntu:24.04

RUN apt update -y && apt upgrade -y
RUN apt install -y \
    build-essential \
    git \
    cmake \
    opencl-headers \
    ocl-icd-opencl-dev \
    intel-opencl-icd # <- your gpu runtime lib here

RUN mkdir /app
COPY ./* /app
WORKDIR /app

RUN make

CMD ["./HelloWorld"]
