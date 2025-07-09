# Stable-diffusion
stable-diffusion with AUTOMATIC1111  Built to Docker
# Tested on
NAME="Ubuntu"
VERSION_ID="22.04"
VERSION="22.04.5 LTS (Jammy Jellyfish)"
# Step
1. Git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
2. Copy Dockerfile , docker-compose.yml , startup.sh  to same folder
# Run
1. cd stable-diffusion-webui-docker
2. docker compose build
3. docker compose up -d
# Load model
1. Copy model to  /stable-diffusion-webui/models/Stable-diffusion
2. Extension to /extensions ex. AnimateDiff
   - Copy Anuimatediff model to  /extensions/sd-webui-animatediff/model/Motion_Module  Ex.  Motion_Module/mm_sd_v15.safetensors
   
