import numpy as np
from keras.preprocessing import image
from keras.models import load_model
import os
import tensorflow as tf
import tensorflow.keras
from PIL import Image, ImageOps
from tensorflow.python.keras.backend import _preprocess_conv2d_input, maximum
from tensorflow.compat.v1 import ConfigProto
from tensorflow.compat.v1 import InteractiveSession

config = ConfigProto()
config.gpu_options.allow_growth = True
session = InteractiveSession(config=config)
np.set_printoptions(suppress=True)

dir=os.listdir("C:/Users/ASUS/Documents/skin dataset/train")
model = tensorflow.keras.models.load_model('C:/Users/ASUS/Documents/keras_model.h5')
data = np.ndarray(shape=(1, 224, 224, 3), dtype=np.float32)
image = Image.open('C:/Users/ASUS/Documents/skin dataset/test/Atopic Dermatitis/03DermatitisAreola45.jpg')
size = (224, 224)
image = ImageOps.fit(image, size, Image.ANTIALIAS)
image_array = np.asarray(image)
normalized_image_array = (image_array.astype(np.float32) / 127.0) - 1
data[0] = normalized_image_array
prediction = model.predict(data)
# print(dir[int(prediction)])
prediction=list(prediction[0])
print(dir[prediction.index(max(prediction))])
# print(prediction)
# prediction = model.predict_classes(data)
# print(dir[prediction[0]])