#!/bin/bash

#$ -pe smp 1        # Specify parallel environment and legal core size
#$ -q gpu
#$ -l gpu_card=1
#$ -N samurai_test  # Specify job name
#$ -o ./logging
#$ -e ./logging

module load conda
conda activate samurai

python modified_vos_inference.py --base_video_dir=/afs/crc.nd.edu/user/j/jmangion/Public/polyp-data/Frame --input_mask_dir=/afs/crc.nd.edu/user/j/jmangion/Public/polyp-data/GT --video_list_file=video_list_file.txt --output_mask_dir=/afs/crc.nd.edu/user/j/jmangion/Public/samurai/sam2/tools/mask_outputs
