import wandb
import os

wandb.login(host="https://api.wandb.ai", key="5409d3b960b01b25cec0f6abb5361b4022f0cc41")
wandb.init(
    mode="online",
    entity="liyitong-Tsinghua University",
    project="self-forcing",
)
basename = "8057c4e7-daae-4927-bf90-f608866c45a1"
src_path = f"/lustre/fsw/portfolios/av/users/shiyil/jfxiao/AirVuz-V2-08052025/videos/{basename}.mp4"
gen_path = f"/lustre/fsw/portfolios/av/users/shiyil/jfxiao/Wan2.2/{basename}.mp4"
wandb.log({f"src/{basename}": wandb.Video(src_path, fps=16, format="mp4")})
wandb.log({f"gen/{basename}": wandb.Video(gen_path, fps=16, format="mp4")})