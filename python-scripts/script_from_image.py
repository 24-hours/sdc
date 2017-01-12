from PIL import Image
import numpy as np

temp=np.asarray(Image.open('C:/Users/msaad/Downloads/Telegram Desktop/0.jpg'))

f = open('script.txt', 'w+')

for j in temp[:4]:
	[f.write('#120 pxl_in = ' + str(i[0]) + '; ')  for i in j]
	f.write('\n')

f.close()

#arr_im_rd = [[i[0] for i in j]  for j in temp[:4]]

