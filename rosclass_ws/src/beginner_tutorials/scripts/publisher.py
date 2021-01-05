#!/usr/bin/env python

import rospy

from std_msgs.msg import String

def talker():
	pub = rospy.Publisher('chatter',String, queue_size =10)
	rospy.init_node('talker', anonymous = False)
	rate = rospy.Rate(2)

	while not rospy.is_shutdown():
			hello_str = "hello, i am learning ROS at this time: %s" %rospy.get_time()
			rospy.loginfo(hello_str)
			pub.publish(hello_str)
			rate.sleep()

if __name__== "__main__":

	try:
		talker()

	except rospy.ROSInterruptException:
		pass
