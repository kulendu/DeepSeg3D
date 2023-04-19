import os
import matplotlib.image
import nibabel as nib

filename = 1

def createMainFolder():
    folders = os.listdir()
    #print(folders)
    if 'output' in folders:
        print("output folder already exists")
    else:
        os.mkdir('output')
        
def createImage(image_link, filename):
    test_load = nib.load(image_link).get_fdata()
    test = test_load[:, :, 55]
    location = '/mnt/e/Machine Learning/output/'
    print(location)
    matplotlib.image.imsave(location + str(filename) + '.png', test)


if __name__ == "__main__":

    createMainFolder()        
    os.chdir('TrainingData/Data')
    trainingData_folder = os.listdir()
    for folder in trainingData_folder:
        print("------------FOLDER--------------")
        print(folder)
        print("--------------------------------")
        os.chdir(folder)
        files = os.listdir()
        print("------------FILES---------------")
        print(files)
        print("---------------------------------")
        for file in files:
            print("--------CONVERTING NII TO PNG---------")
            print(file)
            print("---------------------------------------")
            filename = file.split(".")[0]
            createImage(file, filename=filename)
            #filename = filename + 1
            
        os.chdir("/mnt/e/Machine Learning/TrainingData/Data")

    
    print("Completed!")
    