export Video_ID=$1
export PYTHONPATH=./
export CUDA_VISIBLE_DEVICES=0
export LD_LIBRARY_PATH=
# binarize the dataset
python3.9 data_gen/nerf/binarizer.py --config=egs/datasets/videos/${Video_ID}/lm3d_radnerf.yaml
# train Head NeRF
python3.9 tasks/run.py --config=egs/datasets/videos/${Video_ID}/lm3d_radnerf.yaml --exp_name=${Video_ID}/lm3d_radnerf --reset
# train Torso NeRF
python3.9 tasks/run.py --config=egs/datasets/videos/${Video_ID}/lm3d_radnerf_torso.yaml --exp_name=${Video_ID}/lm3d_radnerf_torso --reset