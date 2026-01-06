DATA_FOLDER=$HOME/chLi/Dataset/GS/haizei_1
ITERATIONS=30000

LIBRARY_PATH=/usr/local/cuda-12.4/targets/x86_64-linux/lib/stubs:$LIBRARY_PATH \
  CUDA_VISIBLE_DEVICES=3 \
  python train_game_engine.py \
  -s ${DATA_FOLDER}/gs/ \
  -m ${DATA_FOLDER}/trianglesplatting/ \
  --eval \
  --iterations ${ITERATIONS}

python create_off.py \
  --checkpoint_path ${DATA_FOLDER}/trianglesplatting/point_cloud/iteration_${ITERATIONS}/point_cloud_state_dict.pt \
  --output_name ${DATA_FOLDER}/trianglesplatting/point_cloud/iteration_${ITERATIONS}/mesh.off
