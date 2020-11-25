import tkinter as tk
from tkinter import filedialog
from tkinter import *
from PIL import ImageTk, Image
import numpy
from keras.models import load_model
import matplotlib.pyplot as plt

model = load_model('my_model.h5')

#dictionary to label all traffic signs class.
classes = { 1:'Tốc Độ Giới Hạn (20km/h)',
            2:'Tốc Độ Giới Hạn (30km/h)',      
            3:'Tốc Độ Giới Hạn (50km/h)',       
            4:'Tốc Độ Giới Hạn (60km/h)',      
            5:'Tốc Độ Giới Hạn (70km/h)',    
            6:'Tốc Độ Giới Hạn (80km/h)',      
            7:'Kết Thúc Tốc Độ Giới Hạn (80km/h)',     
            8:'Tốc Độ Giới Hạn (100km/h)',    
            9:'Tốc Độ Giới Hạn (120km/h)',     
           10:'Cấm Vượt',   
           11:'Cấm xe tải vượt',     
           12:'Giao nhau với đường không ưu tiên',     
           13:'Giao nhau với đường ưu tiên',    
           14:'Đường ưu Tiên',     
           15:'Stop',       
           16:'Đường Cấm',       
           17:'Cấm Xe Tải',       
           18:'Đường 1 chiều',       
           19:'Cảnh Báo Nguy Hiểm',     
           20:'Đường Cong Nguy Hiểm Bên Trái',      
           21:'Đường Cong Nguy Hiểm Bên Phải',   
           22:'Đường Ngằn Ngoèo',      
           23:'Đường Gập Gềnh',     
           24:'Đường trơn trượt',       
           25:'Road narrows on the right',  
           26:'Đang làm Đường',    
           27:'Tín Hiệu Giao Thông',      
           28:'Người Đi Bộ',     
           29:'Trẻ em băng qua',     
           30:'Xe Đạp băng qua',       
           31:'Cẩn thận với băng / tuyết',
           32:'Động vật hoang dã băng qua',      
           33:'Tốc độ kết thúc + giới hạn vượt',      
           34:'Rẽ phải phía trước',     
           35:'Rẽ trái phía trước',       
           36:'Đi Thẳng',      
           37:'Đi thẳng hoặc rẽ phải',      
           38:'Đi thẳng hoặc rẽ phải',      
           39:'Đi bên phải',     
           40:'Đi bên trái',      
           41:'Đi theo vòng xoay',     
           42:'Kết thúc cấm vượt',      
           43:'Kết thúc cấm vượt xe trên 3.5ton' }

class classify_sign():
    def upload_image(self):
        try:
            self.file_path = filedialog.askopenfilename()
            uploaded=Image.open(self.file_path)
            uploaded.thumbnail(((top.winfo_width()/2.25),(top.winfo_height()/2.25)))
            im=ImageTk.PhotoImage(uploaded)
        
            sign_image.configure(image=im)
            sign_image.image=im
            label.configure(text='')
            # show_classify_button(file_path)
            self.classify(self.file_path)
        except:
            pass

    def classify(self, file_path):
        image = Image.open(file_path)
        image = image.resize((30,30))
        image = numpy.expand_dims(image, axis=0)
        image = numpy.array(image)
        print(image.shape)
        pred = model.predict_classes([image])[0]
        sign = classes[pred+1]
        print(sign)
        label.configure(foreground='#011638', text=sign) 

traffic_sign = classify_sign()
#initialise GUI
top=tk.Tk()
top.geometry('400x400')
top.title('Nhận Diện Biển Báo Giao Thông')
top.configure(background='#CDCDCD')

label=Label(top,background='#CDCDCD', font=('arial',15,'bold'))
sign_image = Label(top)

upload=Button(top,text="Upload",command=traffic_sign.upload_image,padx=10,pady=5)
upload.configure(background='#364156', foreground='white',font=('arial',10,'bold'))
upload.pack(side=BOTTOM,pady=50)

sign_image.pack(side=BOTTOM,expand=True)
label.pack(side=BOTTOM,expand=True)

top.mainloop()
