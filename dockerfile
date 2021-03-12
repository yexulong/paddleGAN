FROM python:3.7.9

RUN set -ex \
    && apt-get update \
    && apt install -y --no-install-recommends libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/* \
    && git clone https://gitee.com/paddlepaddle/PaddleGAN \
    && cd PaddleGAN \
    && pip install -r requirements.txt \
    && pip install imageio-ffmpeg \
    && pip install paddlepaddle \
    && pip install moviepy

WORKDIR /PaddleGAN
CMD python
