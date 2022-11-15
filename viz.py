import nibabel as nib
import numpy as np
import matplotlib.pyplot as plt
import os
from vedo import *


PATH = '/home/kulendu/college_materials/7th sem project/BraTS/BraTS20_Training_001/'

'''
Visualiser function to visually interpret the information, 
in terms of rgb and volumes.
'''

class Visualier():

    # returning the shape of the images
    def img_shape():
        for img in (os.listdir(PATH)):
            load_data = nib.load(PATH + img).get_fdata()
            print(img, load_data.shape)


    # visializing the samples of the cases 
    def viz_samples():
        data_img = nib.load('./BraTS20_Training_001/BraTS20_Training_001_flair.nii').get_fdata()
        # print(data_img.shape)

        # print(data_img)

        img = data_img[:,:,59]
        plt.title('FLAIR')
        plt.imshow(img)
        plt.show()


    # vizualiing the volumes
    def viz_volumes():
        vol = Volume('./BraTS20_Training_005/BraTS20_Training_005_t1ce.nii')
        show(vol, axes=1, viewup='z')

    # viz_volumes()


Visualier.viz_volumes()


