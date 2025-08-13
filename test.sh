#!/bin/bash

git pull origin master

source /opt/dlami/nvme/caoyuan/miniconda/bin/activate
conda activate lora

export CUDA_VISIBLE_DEVICES=0,1,2,3
torchrun --nproc_per_node=4 generate.py \
    --task ti2v-5B \
    --size 1280*704 \
    --ckpt_dir /lustre/fsw/portfolios/av/users/shiyil/jfxiao/DiffSynth-Studio/models/Wan-AI/Wan2.2-TI2V-5B \
    --dit_fsdp \
    --t5_fsdp \
    --ulysses_size 4 \
    --image examples/i2v_input.JPG \
    --prompt "Summer beach vacation style, a white cat wearing sunglasses sits on a surfboard. The fluffy-furred feline gazes directly at the camera with a relaxed expression. Blurred beach scenery forms the background featuring crystal-clear waters, distant green hills, and a blue sky dotted with white clouds. The cat assumes a naturally relaxed posture, as if savoring the sea breeze and warm sunlight. A close-up shot highlights the feline's intricate details and the refreshing atmosphere of the seaside."
