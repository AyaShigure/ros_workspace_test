#!/usr/bin/env python
import RPi.GPIO as GPIO
import time
import rospy
from test_package.msg import *





GPIO.setwarnings(False)
echo = 16
trig = 20
GPIO.setmode(GPIO.BCM)
GPIO.setup(trig,GPIO.OUT)
GPIO.setup(echo,GPIO.IN)
GPIO.output(trig,0)





def pulseIn(PIN):               #time difference dection function 
    start = 0
    end = 0
    while GPIO.input(PIN) == 0:
        start = time.time()
    while GPIO.input(PIN) == 1:
        end = time.time()
    return end - start

def upload(frqu,distance):             #publishing every thing
    Hz.Hz = frqu
    Hz.distance = distance 
    motor.Hz = frqu
    rospy.loginfo(Hz)
    rospy.loginfo(motor)
    pub2.publish(Hz)
    pub1.publish(motor)


def dection():              #decting
    while(True):
        sum = 0
        for a in range (100):       #distance calculation part
            time.sleep(2/(1000000))
            GPIO.output(trig,1)
            time.sleep(10/(1000000))
            GPIO.output(trig,0)

            sum = sum + pulseIn(echo)

        ava = sum / 100
        distance = round(34000 * ava/2,2)
        print("d = ",distance," cm")

        if distance > 100:
            frqu = 2
            upload(frqu,distance)
        elif distance > 90 and distance <= 100:#'and' is equivalent of '&&' in C++
            frqu = 3
            upload(frqu,distance)
        elif distance > 80 and distance <= 90:
            frqu = 4
            upload(frqu,distance)
        elif distance > 70 and distance <= 80:
            frqu = 5
            upload(frqu,distance)
        elif distance > 60 and distance <= 70:
            frqu = 6
            upload(frqu,distance)
        elif distance > 50 and distance <= 60:
            frqu = 7
            upload(frqu,distance)
        elif distance > 40 and distance <= 50:
            frqu = 8
            upload(frqu,distance)
        elif distance > 30 and distance <= 40:
            frqu = 9
            upload(frqu,distance)
        elif distance > 20 and distance <= 30:
            frqu = 10
            upload(frqu,distance)
        elif distance > 10 and distance <= 20:
            frqu = 15
            upload(frqu,distance)
        elif distance <10:
            frqu = 1
            upload(frqu,distance)
        else:
            frqu = 0
            upload(frqu,distance)


if __name__ == '__main__':
    try:
        motor = Motor_control()
        Hz = Hz()
        rospy.init_node('SR04')
        pub1 = rospy.Publisher('SR04_buzz_Hz',Hz,queue_size=1)
        pub2 = rospy.Publisher('keyboard_control',Motor_control,queue_size=1)
        dection()
        pass
    except rospy.ROSInterruptException:
        pass
