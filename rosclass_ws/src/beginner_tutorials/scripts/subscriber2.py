#!/usr/bin/env python

import rospy

from std_msgs.msg import String

def callback(data):
        if data.data == "yes":
		rospy.loginfo("got it!")
	else:
		rospy.loginfo("Wrong!")

def listener():
        rospy.init_node('checkword',anonymous = True)
        rospy.Subscriber('wordchoice',String,callback)
        rospy.spin()

if __name__ == "__main__":

        listener()

