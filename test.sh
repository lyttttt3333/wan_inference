#!/bin/bash
source /opt/dlami/nvme/caoyuan/miniconda/bin/activate
conda activate lora

torchrun --nproc_per_node=8 generate.py \
    --task ti2v-5B \
    --size 1280*704 \
    --ckpt_dir /lustre/fsw/portfolios/av/users/shiyil/jfxiao/DiffSynth-Studio/models/Wan-AI/Wan2.2-TI2V-5B \
    --offload_model True \
    --convert_model_dtype \
    --t5_cpu \
    --image examples/i2v_input.JPG \
    --prompt "Summer beach vacation style, a white cat wearing sunglasses sits on a surfboard. The fluffy-furred feline gazes directly at the camera with a relaxed expression. Blurred beach scenery forms the background featuring crystal-clear waters, distant green hills, and a blue sky dotted with white clouds. The cat assumes a naturally relaxed posture, as if savoring the sea breeze and warm sunlight. A close-up shot highlights the feline's intricate details and the refreshing atmosphere of the seaside."