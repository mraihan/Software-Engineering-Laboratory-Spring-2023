from flask import Flask, render_template, request
import cv2
import numpy as np
import dlib
import os

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html') 

@app.route('/process', methods=['POST'])
def process():
    pwd = os.path.dirname(__file__)
    detector = dlib.get_frontal_face_detector()
    predictor = dlib.shape_predictor(pwd + '/shape_predictor_68_face_landmarks.dat')
    
    cap.release()
    cv2.destroyAllWindows()

    return "Processing Complete"

if __name__ == '__main__':
    app.run(debug=True)
