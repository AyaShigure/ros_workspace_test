#!/usr/bin/env python

import rospy
#from std_msgs.msg import Int16
from test_package.msg import Hz
import time



def buzz_control():
    rospy.init_node('buzz_control')
    pub = rospy.Publisher('buzzing_hz',Hz,queue_size=1)
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        t = Hz()
#        try:
#            data = input('Input a command frquence:')
#            print('Command frquence = ',data,' Hz\n')
#        except ValueError:
#            print('Please input a int .\n')
        t.Hz = int(input('Input a command frquence:'))
        if t.Hz<0:
            print('?????? Who told u that frquence could be minus???\n')
            
        else:
            print('\n')
            rospy.loginfo(t)
            pub.publish(t)

        rate.sleep()



if __name__ == '__main__':
    try:
        buzz_control()
    except rospy.ROSInterruptException:
        pass