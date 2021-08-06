import os
import shutil
from torchvision.io import read_image, ImageReadMode
from tqdm import tqdm
import psutil
import ray
from PIL import Image
import glob
path = glob.glob("images/*/*.jpg")
broken_path = "/home/user/data/CC12M/broken_images"
num_cpus = psutil.cpu_count(logical=False)
ray.init(num_cpus=num_cpus)


@ray.remote
def check_image(image_file):
    try:
        img = read_image(image_file, mode=ImageReadMode.RGB)
    except:
        image = Image.open(image_file)
        imga = image.convert('RGB')
        imga.save(os.path.join(image_file))
        # shutil.move(image_path, broken_path)


initial_count = len(path)
print(initial_count)
# 10237845
# 10237799
for idx, image_file in enumerate(path):
    check_image.remote(image_file)
    # check_image(image_file)
    #print(idx)
final_count = len(os.listdir(path))

print(initial_count, final_count)
