# !/bin/bash
conda create --name c3dgs python=3.8 -y
conda activate c3dgs

# conda install -c conda-forge -c nvidia cudatoolkit=11.8 -y
conda install nvidia/label/cuda-11.8.0::cuda-toolkit -y
# conda install -c nvidia cuda-nvcc=11.8 -y

# conda install -c conda-forge gcc=9 gxx=9 -y
conda install -c conda-forge gcc=9 -y

# conda install -c pytorch pytorch torchvision torchaudio pytorch-cuda=12.1 -y
# conda install -c nvidia pytorch-cuda=12.1 -y
conda install -c pytorch pytorch torchvision torchaudio pytorch-cuda -y
conda install -c pyg pytorch-scatter -y
conda install -c conda-forge plyfile=0.8.1 tqdm -y
pip install --upgrade pip

conda install conda-forge::glm -y
conda install conda-forge::ninja -y

pip install submodules/diff-gaussian-rasterization
pip install submodules/weighted_distance