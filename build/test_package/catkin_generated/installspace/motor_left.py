#!/usr/bin/env python3
import RPi.GPIO as GPIO
import time
import rospy
from test_package.msg import Motor_control

purple = 13
blue = 6

GPIO.setmode(GPIO.BCM)
GPIO.setup(purple,GPIO.OUT)   # (init = 0)
GPIO.setup(blue,GPIO.OUT)   # (init = 0)
GPIO.output(purple,0)
GPIO.output(blue,0)


def callback(message)



def initization()
    rospy.init_node('motor_left')