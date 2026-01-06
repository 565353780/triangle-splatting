pip install ninja pybind11

pip3 install torch torchvision \
  --index-url https://download.pytorch.org/whl/cu128

pip install tqdm plyfile open3d lpips mediapy opencv-python

cd submodules/diff-triangle-rasterization
python setup.py install

cd ../simple-knn
python setup.py install
