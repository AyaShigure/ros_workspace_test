#!/usr/bin/env python3

#duration of motor spinning is 0.5s 
#
#duration of motor spinning will not be changed in this
#version of script.
#

import time
import rospy
from test_package.msg import Motor_control
import termios, sys , tty
import keyboard
from termcolor import colored

#defining raw input function
def _getch():
   fd = sys.stdin.fileno()
   old_settings = termios.tcgetattr(fd)
   try:
      tty.setraw(fd)
      ch = sys.stdin.read(1)     #This number represents the length
   finally:
      termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
   return ch

   # wasd for control turnning 
   # getch()== x then input speed 
   # then back to wasd control




def publishing(left,right):
    motor.left_speed = left
    motor.right_speed = right
    motor.left_duration = 0.5
    motor.right_duration = 0.5

    rospy.loginfo(motor)
    pub.publish(motor)

#press one key one time to send msg to Motor_control topic
def control():
    rate = rospy.Rate(0.25)
    print(colored('Use WASD to control the movement\n','blue'))
    print(colored('ATTENTION! Press one key a time!!!\n','red'))
    print('\n   W   \nA  S  D')
    while not rospy.is_shutdown():
        get = _getch()
        if get == 'w':
            publishing(100,100)
        elif get == 's':
            publishing(-100,-100)
        elif get == 'a':
            publishing(0,100)
        elif get == 'd':
            publishing(100,0)
        else:
            print(colored('\n\nPLEASE INPUT WASD!\n\n','red'))

        rate.sleep()


if __name__ == '__main__':
    try:
        motor = Motor_control()
        rospy.init_node('keyboard_control')
        pub = rospy.Publisher('keyboard_input',Motor_control,queue_size=1)
        control()
    except rospy.ROSInterruptException:
        pass