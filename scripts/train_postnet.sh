export Video_ID=$1
export PYTHONPATH=./
export CUDA_VISIBLE_DEVICES=0
export LD_LIBRARY_PATH=
python3.9 tasks/run.py --config=egs/datasets/videos/${Video_ID}/lm3d_postnet_sync.yaml --exp_name=${Video_ID}/lm3d_postnet_sync --reset
