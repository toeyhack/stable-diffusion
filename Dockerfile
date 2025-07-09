FROM nvidia/cuda:12.1.1-cudnn8-runtime-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    git wget curl python3 python3-pip python3-venv \
    libgl1 libglib2.0-0 ffmpeg

WORKDIR /app

RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git .

# Install dependencies
RUN python3 -m venv venv && \
    . venv/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements_versions.txt && \
    pip install xformers

COPY startup.sh /app/startup.sh
RUN chmod +x /app/startup.sh

CMD ["/app/startup.sh"]
