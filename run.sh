python main_swav.py --data_path ../../dataset/ --size_crops 32 --nmb_crops 2 --nmb_prototypes 30 --batch_size 512 --epochs 500 --base_lr 0.06 --final_lr 0.0006 --temperature 0.5 --use_fp16 true --dump_path checkpoints --freeze_prototypes_niters 900
python eval_linear.py --data_path ../../dataset/ --dump_path ./checkpoints_linear --pretrained checkpoint.pth.tar --batch_size 512 --lr 0.03