set -ex

mkdir BraTS_fined_data
cd BraTS_fined_data

mkdir -p train_data
cd train_data
wget 'https://drive.google.com/uc?export=download&id=1kQDvadZR_hTy9MjU4jOmrbh5HhYNrGPK' -O npy_image
wget 'https://drive.google.com/uc?export=download&id=1k_EnaAd8S7VWyrLjkTcBmKIgEF_rxepp' -O npy_masks
cd ..

mkdir -p validation_data
cd validation_data
wget 'https://drive.google.com/uc?export=download&id=1Ya6hQ2YmR9MqFskNfr8DXE6k8GimukAa' -O npy_image_val
wget 'https://drive.google.com/uc?export=download&id=1n4tPigE32gpUHevN23h8IzoGcHO7gSVJ' -O npy_masks_val
cd ..


