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

Run the following code to install all pip packages:
```sh
python3 ./scripts/pkg_install.py
```

<!--  Dataset taken from [here - ***BraTS 2020 Challenge***](https://www.med.upenn.edu/cbica/brats2020/data.html) 

![BraTS-main](https://www.med.upenn.edu/cbica/assets/user-content/images/BraTS/BRATS_banner_noCaption.png)  -->

## Prepare the data
1. run the following script to download the generated and conerted data (in pkl format) and copy them under `the root folder ./`
```sh
python3 ./scripts/download_generated_pkl_files.sh 
```
2. run the following script to download the full dataset 
```sh
python3 ./scripts/download_full_data.sh 
```

