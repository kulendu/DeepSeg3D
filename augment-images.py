import os
import cv2
import numpy as np


if __name__ == "__main__":
    os.chdir("/mnt/e/Machine Learning/output/")
    images = os.listdir()
    print(images)
    # image = cv2.imread(images[0])
    

    
    for image in images:
        #src = r"/mnt/e/Machine Learning/output/" + repr(image)
        #print(int(image).shape())
        src = cv2.imread(image)
        vflip_image = cv2.flip(src, 0) # 0 to flip vertically
        hflip_image = cv2.flip(src, 1) # 1 to flip horizontally
        
        vflip_filename = image + "_vflip.jpg"
        hflip_filename = image +"_hflip.jpg"
        
        cv2.imwrite(vflip_filename, vflip_image)
        cv2.imwrite(hflip_filename, hflip_image)
        print("---------------------------------")
        print(vflip_filename + " and " + hflip_filename + " images generated")
        print("---------------------------------")
        
            
    
    