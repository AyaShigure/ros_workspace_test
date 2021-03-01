#!/usr/bin/env python3
import time
import rospy
from test_package.msg import *
from termcolor import colored

def display1(message): 
    ls = message.left_speed
    rs = message.
    ld = message.left_duration
    rd = message.right_duration
    return ls,rs,ld,rd

def display2(message):
    hz = message.Hz
    dis = message.distance
    return hz

def printing(ls,rs,ld,rd,hz,dis):
    print(colored('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX','red'))
    print('Displaying current status:\n\n')
    print('left speed = ',colored(ls,'green'),'          ','right speed = ',colored(rs,'green'))
    print('XX                    XX\nXX                    XX\nXXXXXXXXXXXXXXXXXXXXXXXX')
    print('\ndistance between wall in the front = ',colored(dis,'green'))
    print('Buzzing frquence = ',colored(hz,'green'))

if __name__ == '__main__':
    try:
        rospy.init_node('status_disp')
        rospy.Subscriber('keyboard_input',Motor_control,display1)
        rospy.Subscriber('SR04_buzz_Hz',Hz,display2)

        result1 = display1(message)
        result2 = display2(message)

        printing(result1[0],result1[1],result1[2],result1[3],result1[4],result2[0],result2[1])

        rospy.spin()
    except rospy.ROSInterruptException:
        pass