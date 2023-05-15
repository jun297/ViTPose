#!/bin/bash
echo $CUDA_VISIBLE_DEVICES
echo $SLURM_NODELIST
echo $SLURM_NODEID

ml purge
bash tools/dist_test.sh configs/body/2d_kpt_sview_rgb_img/topdown_heatmap/coco/ViTPose_large_coco_256x192.py model.pretrained=pretrained_model/vitpose_large_coco_aic_mpii.pth 2

