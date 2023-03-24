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
    
    cap = cv2.VideoCapture(0)

    while True:
        _, frame = cap.read()
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        faces = detector(gray)
        for face in faces:
            x1 = face.left()
            y1 = face.top()
            x2 = face.right()
            y2 = face.bottom()
            #cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 3)

            landmarks = predictor(gray, face)

            for n in range(0, 68):
                x = landmarks.part(n).x
                y = landmarks.part(n).y
                cv2.circle(frame, (x, y), 2, (255, 0, 0), -2)

        cv2.imshow("Frame", frame)

        key = cv2.waitKey(1)
        if key == 27:
            break
    
    cap.release()
    cv2.destroyAllWindows()

    return "Processing Complete"

if __name__ == '__main__':
    app.run(debug=True)
