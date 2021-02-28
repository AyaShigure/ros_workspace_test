#!/usr/bin/env python
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


def callback(message): 
    if message.right_speed == 100:
        print(message)
        GPIO.output(white,1)
        GPIO.output(gray,0) #wheel 1
        time.sleep(message.right_duration)
        GPIO.output(white,0)
        GPIO.output(gray,0) #wheel 1

    elif message.right_speed == -100:
        print(message)
        GPIO.output(white,0)
        GPIO.output(gray,1) #wheel 1
        time.sleep(message.right_duration)
        GPIO.output(white,0)
        GPIO.output(gray,0) #wheel 1
    
    elif message.right_speed == 0:
        print(message)
        GPIO.output(white,0)
        GPIO.output(gray,0) #wheel 1


if __name__ == '__main__':
    try:
        rospy.init_node('motor_right')
        rospy.Subscriber('keyboard_input',Motor_control,callback)
        rospy.spin()
    except rospy.ROSInterruptException:
        pass