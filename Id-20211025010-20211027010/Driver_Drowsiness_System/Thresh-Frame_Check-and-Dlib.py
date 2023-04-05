thresh = 0.25
frame_check = 10
detector = dlib.get_frontal_face_detector()
predictor = dlib.shape_predictor(os.path.dirname(_file_) + '/shape_predictor_68_face_landmarks.dat')
(lStart, lEnd) = face_utils.FACIAL_LANDMARKS_68_IDXS["left_eye"]
(rStart, rEnd) = face_utils.FACIAL_LANDMARKS_68_IDXS["right_eye"]