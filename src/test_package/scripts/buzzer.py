#!/usr/bin/env python

import rospy
#from std_msgs.msg import Int16
from test_package.msg import Hz
import RPi.GPIO as GPIO
import time

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
buzzer_pin = 21
GPIO.setup(buzzer_pin,GPIO.OUT)
GPIO.output(buzzer_pin,0)


#buzzing with frquence of f for 1s
def callback(message):
#    f = data
#    cycle = int(round(f,0)) #int(f) to fit the function for a in range()
    t = 1/float(message.Hz)
    print('data = ',message.Hz,'Hz\n')  
    for a in range(message.Hz):
        GPIO.output(buzzer_pin,1)
        time.sleep(t/2)             #sleep for half wave length
        GPIO.output(buzzer_pin,0)
        time.sleep(t/2)


def buzzing():

    rospy.init_node('buzzer')
    rospy.Subscriber('buzzing_hz',Hz,callback)


    

if __name__ == '__main__':
    buzzing()
    rospy.spin()