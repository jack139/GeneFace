## TEST



### 安装 pytorch3d：

```bash
git clone https://github.com/facebookresearch/pytorch3d.git
cd pytorch3d
sudo pip3.9 install -e . --trusted-host mirrors.aliyun.com --extra-index-url http://mirrors.aliyun.com/pypi/simple/
```



### 安装 系统包：

```bash
sudo apt-get install libasound2-dev portaudio19-dev
```



### 安装 pip包：

```text
kornia==0.5.0
dominate==2.8.0
ffmpeg-python==0.2.0
pyaudio==0.2.13
scikit-image==0.20.0
trimesh==3.21.3
face_alignment==1.3.5
soundfile==0.12.1
numba==0.56.4
moviepy==1.0.3
resampy==0.4.2
configargparse==1.5.3
python_speech_features==0.6
praat-parselmouth==0.4.3
pymcubes==0.1.4
lpips==0.1.4
```



### 测试

```bash
# 准备数据
bash data_gen/nerf/process_data.sh May
# 推理
bash scripts/infer_postnet.sh
bash scripts/infer_lm3d_radnerf.sh
# 生成结果
ls infer_out/May/pred_video/
```



### Pretrained model

1. ```~/.cache/torch/hub/checkpoints/```

```text
2DFAN4-cd938726ad.zip
alexnet-owt-7be5be79.pth
resnet18-5c106cde.pth
s3fd-619a316812.pth
```

2. ```checkpoints/```

```text
DeepSpeech/
hubert-large-ls960-ft/
lrs3/
May/
wav2vec2-large-xlsr-53-esperanto/
```

3. ```deep_3drecon/checkpoints/```

```text
facerecon/
```

4. ```deep_3drecon/BFM/```

```
01_MorphableModel.mat
BFM_front_idx.mat
Exp_Pca.bin
select_vertex_id.mat
std_exp.txt
BFM_exp_idx.mat
BFM_model_front.mat
facemodel_info.mat
similarity_Lm3D_all.mat
```
