# SwAV (CIFAR-10)
This code is a modified version of SwAV [code](https://github.com/facebookresearch/swav), [paper](https://arxiv.org/abs/2006.09882) for CIFAR-10.

As mentioned in this [README](https://github.com/facebookresearch/swav/README.md), the loss sometimes gets stuck at ln(nmb_prototypes). This repository successfully avoids that through architecture changes and hyperparameter tuning.


Specifically,
- The Resnet-50 architecture has been modified to suit 32x32 images in CIFAR-10. The kernel size and stride for conv1 block has been changed to 3 and 1 respectively. The maxpool operation after the conv1 block has been removed.
- The hyperparameters have been tuned for CIFAR-10.
- No Multicrop, No queue, No distributed training. Uncommenting a few lines would re-enable distributed training.

Please refer to [run.sh](./run.sh) script for the used hyper-parameters. The file paths would need to be modified accordingly.

For a detailed README and more information about SwAV, please refer to the excellent [README](https://github.com/facebookresearch/swav/README.md) by the authors.