from flask import Flask, render_template, request
import cv2
import numpy as np
import dlib
import os
from scipy.spatial import distance
from imutils import face_utils
from pygame import mixer
import imutils