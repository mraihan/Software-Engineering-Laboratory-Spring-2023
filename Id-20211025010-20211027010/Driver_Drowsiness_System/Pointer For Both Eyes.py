flag=0

  leftEye = []
            rightEye = []
            for n in range(0, 68):
                x = landmarks.part(n).x
                y = landmarks.part(n).y
                cv2.circle(frame, (x, y), 2, (255, 0, 0), -2)
                
                if n in range(lStart, lEnd):
                    leftEye.append((x,y))
                elif n in range(rStart, rEnd):
                    rightEye.append((x,y))