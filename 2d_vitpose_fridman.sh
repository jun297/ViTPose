#!/bin/bash
echo $CUDA_VISIBLE_DEVICES
echo $SLURM_NODELIST
echo $SLURM_NODEID

ml purge
python demo/top_down_video_demo_with_mmdet.py \
	mmdet_configs/yolox/yolox_tiny_8x8_300e_coco.py \
	pretrained_model/yolox_tiny_8x8_300e_coco_20211124_171234-b4047906.pth \
	configs/body/2d_kpt_sview_rgb_img/topdown_heatmap/coco/ViTPose_base_coco_256x192.py \
	pretrained_model/vitpose_base_coco_aic_mpii.pth \
	--video-path inputs/Fridman_6s.mp4 \
	--out-video-root vis_results
