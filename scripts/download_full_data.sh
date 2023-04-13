set -ex

mkdir BraTS_fined_data
cd BraTS_fined_data

mkdir -p train_data
cd train_data
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1-4aez3fMP_SXrFzyoZK3dnJ97kfwOoeJ' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1-4aez3fMP_SXrFzyoZK3dnJ97kfwOoeJ" -O train_img.zip && rm -rf /tmp/cookies.txt
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1-Dc3Ov1Mzh8_WuBPu4l7csaMKfRC1Lg2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1-Dc3Ov1Mzh8_WuBPu4l7csaMKfRC1Lg2" -O train_masks.zip && rm -rf /tmp/cookies.txt
cd ..

mkdir -p validation_data
cd validation_data
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1-FoShRUkK07DUVxhPSkGGCEeIiQoKJYr' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1-FoShRUkK07DUVxhPSkGGCEeIiQoKJYr" -O val_img.zip && rm -rf /tmp/cookies.txt
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1-LeAFBxiVcBarCgEAenGgpmYNi108xzt' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1-LeAFBxiVcBarCgEAenGgpmYNi108xzt" -O val_masks.zip && rm -rf /tmp/cookies.txt
cd ..
