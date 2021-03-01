#!/usr/bin/env python3
import RPi.GPIO as GPIO
import time
import rospy
from test_package.msg import Motor_control

purple = 13
blue = 6

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(purple,GPIO.OUT)   # (init = 0)
GPIO.setup(blue,GPIO.OUT)   # (init = 0)
GPIO.output(purple,0)
GPIO.output(blue,0)


def callback(message): 
    if message.left_speed == 100:
        print(message)
        GPIO.output(purple,1)
        GPIO.output(blue,0) 
        time.sleep(message.left_duration)
        GPIO.output(purple,0)
        GPIO.output(blue,0) #wheel 2

    elif message.left_speed == -100:
        print(message)
        GPIO.output(purple,0)
        GPIO.output(blue,1) 
        time.sleep(message.left_duration)
        GPIO.output(purple,0)
        GPIO.output(blue,0) #wheel 2
    
    elif message.left_speed == 0:
        print(message)
        GPIO.output(purple,0)
        GPIO.output(blue,0) #wheel 2

if __name__ == '__main__':
    try:
        rospy.init_node('motor_left')
        rospy.Subscriber('keyboard_input',Motor_control,callback)
        rospy.spin()
    except rospy.ROSInterruptException:
        pass