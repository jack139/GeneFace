export Video_ID=May
LD_LIBRARY_PATH= CUDA_VISIBLE_DEVICES=0 python3.9 tasks/run.py --config=egs/datasets/videos/${Video_ID}/lm3d_postnet_sync.yaml --exp_name=${Video_ID}/lm3d_postnet_sync --reset
