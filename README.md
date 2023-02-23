This repository contains a TensorFlow implementation of 'paper_name' 
This codebase provides:
- Testing code
- Visualization code

## Requirements
- Python 3
- [TensorFlow](https://www.tensorflow.org/) tested on 2.4.1
- os
- numpy
- tqdm
- [Keras](https://keras.io/)
- glob
- [Segmentation Models 3D](https://github.com/ZFTurbo/segmentation_models_3D)

Dataset taken from [here - ***BraTS 2020 Challenge***](https://www.med.upenn.edu/cbica/brats2020/data.html) 

![BraTS-main](https://www.med.upenn.edu/cbica/assets/user-content/images/BraTS/BRATS_banner_noCaption.png)



### Architectures suitable for segmentation & works with any classificaion head:
- U-Net (supressed up/down-sampling)
- ResNet (versions may vary, but >=30)
- Any Encoder-Decoder based arch.
- Transformers, but don't know how it will repsond with images. 

### Executable pipeline, so far:
- [x] Collect data
- [ ] Augment/or, (use some other image reproducing techniques). **Reason:** The data is way too sensitive, so reprodcing must be feature-extraction friendly.
- [ ] Form the Neural-Architecture.
- [ ] Know the *Medical terminologies* regarding the data and the *disease* as well.
