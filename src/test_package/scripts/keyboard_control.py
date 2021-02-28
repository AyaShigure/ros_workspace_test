#!/usr/bin/env python

#duration of motor spinning is 0.5s 
#
#duration of motor spinning will not be changed in this
#version of script.
#

import time
import rospy
from test_package.msg import Motor_control
import termios, sys , tty
# import keyboard
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
    print('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\n')
    rospy.loginfo(motor)
    print('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\n')    
    pub.publish(motor)

#press one key one time to send msg to Motor_control topic
def control():
    rate = rospy.Rate(2.1)
    print(colored('Use WASD to control the movement\n','blue'))
    print(colored('ATTENTION! Press one key a time!!!\n','red'))

    while not rospy.is_shutdown():
        print('\nq  W   \nA  S  D')
        get = _getch()# heres a problem #############################################################
        if get == 'w':
            publishing(100,100)
        elif get == 's':
            publishing(-100,-100)
        elif get == 'a':
            publishing(100,-100)
        elif get == 'd':
            publishing(-100,100)
        elif get == 'q':
            break
        else:
            print(colored('\n\nPLEASE INPUT WASD!\n\n','red'))
            print('\nq   W   \nA  S  D')
        rate.sleep()


if __name__ == '__main__':
    try:
        motor = Motor_control()
        rospy.init_node('keyboard_control')
        pub = rospy.Publisher('keyboard_input',Motor_control,queue_size=1)
        control()
        pass
    except rospy.ROSInterruptException:
        pass