set -ex


mkdir dumped_files
cd dumped_files
wget "https://drive.google.com/uc?export=download&id=1lRXbDbEzVRRKdAvPNOWxer5gNManTIh0" -O input_img.pkl
wget "https://drive.google.com/uc?export=download&id=1QXF7Ddt1xrcPYrcg2LxFR6cV68pzSqfC" -O input_masks.pkl
cd ..

