# https://data-flair.training/blogs/python-project-traffic-signs-recognition/
# This code creat by: Bao-Pham
# Contact via: baopq.spkt@gmail.com or https://www.linkedin.com/in/quoc-bao-pham-a6900718a/


import numpy as np 
import pandas as pd 
import matplotlib.pyplot as plt
import cv2
import tensorflow as tf
from PIL import Image
import os
from sklearn.model_selection import train_test_split
from keras.utils import to_categorical
from keras.models import Sequential, load_model
from keras.layers import Conv2D, MaxPool2D, Dense, Flatten, Dropout
from sklearn.metrics import accuracy_score

class tranning_image():
    def __init__(self):
        self.data = []
        self.labels = []
        self.classes = 43
        self.cur_path = os.getcwd()

    def resize_convert_np_array(self):
        print("========> RESIZE AND COVERT IMAGE TO NUMPY ARRAY <========")
        for i in range(self.classes):
            path = os.path.join(self.cur_path,'train',str(i))
            images = os.listdir(path)
            for a in images:
                try:
                    image = Image.open(path + '\\' + a)
                    # Resize Image to 30*30
                    image = image.resize((30,30))
                    # Convert Image to Numpy array
                    image = np.array(image)
                    # Add data image
                    self.data.append(image)
                    # Add Label
                    self.labels.append(i)
                except:
                    print("Error Loading Image")

        # Convert data, label to array
        self.data = np.array(self.data)
        self.labels = np.array(self.labels)

        #   self.data.shape:  (39209, 30, 30, 3)
        #   self.labels.shape:  (39209,)


    def split_training_test(self):
        """
            X_Train: data train
            X_Valid: data validation
            y_train: label train
            y_valid: label validation
        """
        print("=======> SPLIT TRAINING DATA <========")
        self.X_train, self.X_valid, self.y_train, self.y_valid = train_test_split(self.data,self.labels, test_size=0.2, random_state=42)
        # X_train.shape:  (31367, 30, 30, 3)
        # X_valid.shape:  (7842, 30, 30, 3)
        # y_train.shape:  (31367,)
        # y_valid.shape:  (7842,)

        # Convert label to one-hot coding
        self.y_train = to_categorical(self.y_train, 43)
        self.y_valid = to_categorical(self.y_valid,43)

        # y_train:  (31367, 43)
        # y_valid:  (7842, 43)    

    def build_network(self):
        print("=======> BUILD CNN <========")
        model = Sequential()
        model.add(Conv2D(filters=32, kernel_size=(5,5), activation='relu', input_shape=self.X_train.shape[1:]))
        model.add(Conv2D(filters=32, kernel_size=(5,5), activation='relu'))
        model.add(MaxPool2D(pool_size=(2, 2)))
        model.add(Dropout(rate=0.25))
        model.add(Conv2D(filters=64, kernel_size=(3, 3), activation='relu'))
        model.add(Conv2D(filters=64, kernel_size=(3, 3), activation='relu'))
        model.add(MaxPool2D(pool_size=(2, 2)))
        model.add(Dropout(rate=0.25))
        model.add(Flatten())
        model.add(Dense(256, activation='relu'))
        model.add(Dropout(rate=0.5))
        model.add(Dense(43, activation='softmax'))

        #Compilation of the model
        model.compile(loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])
        epochs = 15
        history = model.fit(self.X_train, self.y_train, batch_size=32, epochs=epochs, validation_data=(self.X_valid, self.y_valid))
        model.save("my_model.h5")

        self.display_graph_accuracy(history)
        self.test_accuracy(model)        

    def display_graph_accuracy(self, history):
        plt.figure(0)
        plt.plot(history.history['accuracy'], label='training accuracy')
        plt.plot(history.history['val_accuracy'], label='val accuracy')
        plt.title('Accuracy')
        plt.xlabel('epochs')
        plt.ylabel('accuracy')
        plt.legend()
        plt.show()

        plt.figure(1)
        plt.plot(history.history['loss'], label='training loss')
        plt.plot(history.history['val_loss'], label='val loss')
        plt.title('Loss')
        plt.xlabel('epochs')
        plt.ylabel('loss')
        plt.legend()
        plt.show()

    def test_accuracy(self, model):
        print("========> TEST ACCURACY <========")

        y_test = pd.read_csv('Test.csv')
        labels = y_test["ClassId"].values
        imgs = y_test["Path"].values

        data=[]
        for img in imgs:
            image = Image.open(img)
            image = image.resize((30,30))
            data.append(np.array(image))

        X_test=np.array(data)

        pred = model.predict_classes(X_test)
        print("accuracy_score: ",accuracy_score(labels, pred))

project_image = tranning_image()

def final_project():
    print("========> TRAINNING MODEL <=========")
    project_image.resize_convert_np_array()
    project_image.split_training_test()
    project_image.build_network()

final_project()
