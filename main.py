from flask import Flask,render_template,request,session,redirect
import flask
from flask_sqlalchemy import SQLAlchemy
import socket
import os

app=Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI']="mysql://root:@localhost/new"
app.config['UPLOAD_FOLDER']="C:\\Users\\ASUS\\Documents\\Projects\\DBMS"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db=SQLAlchemy(app)

class dis(db.Model):
    __tablename__ = 'disease'
    Sno=db.Column(db.Integer,primary_key=True)
    diseas = db.Column(db.String(100),nullable=False)
    precaution1 = db.Column(db.String(100),nullable=False)
    precaution2 = db.Column(db.String(100),nullable=True)
    precaution3 = db.Column(db.String(100), nullable=True)
    helpful = db.Column(db.String(200),nullable=False)
    medicine = db.Column(db.String(100),nullable=False)

@app.route("/")
def start():
    return render_template("index.html")

@app.route("/credits")
def disease():
    return render_template("credits.html")

@app.route("/upload")
def upload():
    x=0
    return render_template("upload.html",x=0)


@app.route("/details",methods=['GET',"POST"])
def details():
    pos=dis.query.all()
    return render_template("details.html",post=pos)

@app.route("/photo",methods=['GET','POST'])
def photo():
    global prediction
    if request.method=='POST':
        from PIL import Image, ImageOps
        f=request.files['file']
        import numpy as np
        from keras.preprocessing import image
        from keras.models import load_model
        import os
        import tensorflow as tf
        import tensorflow.keras
        from tensorflow.python.keras.backend import _preprocess_conv2d_input, maximum
        from tensorflow.compat.v1 import ConfigProto
        from tensorflow.compat.v1 import InteractiveSession
        
        config = ConfigProto()
        config.gpu_options.allow_growth = True
        session = InteractiveSession(config=config)
        np.set_printoptions(suppress=True)
        global dir
        dir=['Acne and Rosacea', 'Actinic Keratosis Basal Cell Carcinoma and other Malignant Lesions', 'Atopic Dermatitis', 'Bullous Disease', 'Eczema', 'Exanthems and Drug Eruptions', 'Hair Loss Photos Alopecia and other Hair Diseases', 'Herpes HPV and other STDs', 'Light Diseases and Disorders of Pigmentation', 'Lupus and other Connective Tissue diseases', 'Melanoma Skin Cancer Nevi and Moles', 'Nail Fungus and other Nail Disease', 'Psoriasis pictures Lichen Planus and related diseases', 'Seborrheic Keratoses and other Benign Tumors', 'Tinea Ringworm Candidiasis and other Fungal Infections', 'Urticaria Hives', 'Vascular Tumors', 'Warts Molluscum and other Viral Infections']
        print(*dir,sep='\n')
        model = tensorflow.keras.models.load_model('C:/Users/ASUS/Documents/Projects/DBMS/keras_model1.h5')
        data = np.ndarray(shape=(1, 224, 224, 3), dtype=np.float32)
        image = Image.open(f)
        size = (224, 224)
        image = ImageOps.fit(image, size, Image.ANTIALIAS)
        image_array = np.asarray(image)
        normalized_image_array = (image_array.astype(np.float32) / 127.0) - 1
        data[0] = normalized_image_array
        prediction = model.predict(data)
        prediction=list(prediction[0])
        print(dir[prediction.index(max(prediction))])
        # prediction = model.predict_classes(data)
        return redirect('/disease')
        # return dir[prediction.index(max(prediction))]

@app.route("/disease",methods=['GET',"POST"])
def predict():
    post=dis.query.filter_by(diseas=dir[prediction.index(max(prediction))])
    x=1
    print(dir[prediction.index(max(prediction))])
    return render_template("upload.html",post=post,x=1,percent=int(max(prediction)*100))

app.run(debug=True)