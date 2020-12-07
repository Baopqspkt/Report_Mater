Wellcome to my folder:
Refer https://data-flair.training/blogs/python-project-traffic-signs-recognition/

1. Before run "pip install -r setup.txt" for get nesessary library for project
2. Before run you shoud download file train and test via link:
    https://drive.google.com/file/d/1glFiMH2CGHd-N9WYol17Cqeq1sW3vXEn/view?usp=sharing
After Download you should move 3 folder into rar to current folder file python
3. Run by command python on Vs-code on file gui.py

File:
+   traffic_sign. py -> Creat model
+   gui.py -> detect traffic sign

If you need more information, contact to me: baopq.spkt@gmail or Linkedin: Quoc Bao Pham

You should install library with verison detail below:
Version Library:
>>> import numpy as np
>>> print(np.__version__)
1.18.5

>>> import matplotlib
>>> print('matplotlib: {}'.format(matplotlib.__version__))
matplotlib: 3.3.2

>>> import tensorflow as t
2020-12-08 00:22:15.744263: W tensorflow/stream_executor/platform/default/dso_loader.cc:59] Could not load dynamic library 'cudart64_101.dll'; dlerror: cudart64_101.dll not found
2020-12-08 00:22:15.747033: I tensorflow/stream_executor/cuda/cudart_stub.cc:29] Ignore above cudart dlerror if you do not have a GPU set up on your machine.
>>> print(t.__version__) 
2.3.1

>>> PIL.__version__
'7.2.0'

>>> import sklearn
>>> print('The scikit-learn version is {}.'.format(sklearn.__version__))
The scikit-learn version is 0.23.2.

>>> import keras
>>> print(keras.__version__)
2.4.3