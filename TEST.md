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
dominate
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
python_speech_features
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

```

```