#!/usr/bin/env python3
import RPi.GPIO as GPIO
import time
import rospy
from test_package.msg import Motor_control

white= 26
gray = 19

GPIO.setmode(GPIO.BCM)
GPIO.setup(white,GPIO.OUT)   # (init = 0)
GPIO.setup(gray,GPIO.OUT)   # (init = 0)
GPIO.output(white,0)
GPIO.output(gray,0)


def callback(message)



def initization()
    rospy.init_node('motor_right')