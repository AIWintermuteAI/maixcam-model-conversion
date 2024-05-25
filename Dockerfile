FROM sophgo/tpuc_dev:v3.2

WORKDIR /app

RUN wget https://github.com/sophgo/tpu-mlir/releases/download/v1.7/tpu_mlir-1.7-py3-none-any.whl && \
    pip install tpu_mlir-1.7-py3-none-any.whl[all]
RUN wget https://github.com/sophgo/tpu-mlir/releases/download/v1.7/tpu-mlir-resource.tar && \
    tar -xvf tpu-mlir-resource.tar && \
    mv regression/ tpu-mlir-resource/