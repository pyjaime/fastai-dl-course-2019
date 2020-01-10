#!/bin/bash
pip install https://download.pytorch.org/whl/cu100/torch-1.2.0-cp36-cp36m-manylinux1_x86_64.whl
pip install https://download.pytorch.org/whl/cu100/torchvision-0.4.0-cp36-cp36m-manylinux1_x86_64.whl

rm -rf apex
git clone https://github.com/NVIDIA/apex
pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./apex

curl -s https://course.fast.ai/setup/colab | bash
pip install nbconvert
pip install fire