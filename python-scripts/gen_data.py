from PIL import Image
import numpy as np

nums = range(379,1001)
names = ['dataset_1000/' + str(n) + '.jpg' for n in nums]
names_comp = ['dataset_1000_compressed/' + str(n) + '.jpg' for n in nums]

for name, name_comp in zip(names, names_comp):
	image = Image.open(name).resize((200, 66), Image.ANTIALIAS)
	print name_comp
	image.save(name_comp)