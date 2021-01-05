#!/usr/bin/env python

import rospy

from std_msgs.msg import String
import random
def talker():
        pub = rospy.Publisher('wordchoice',String, queue_size = 10)
        rospy.init_node('pickword', anonymous = False)
	words = ["yes","no","maybe"]
        rate = rospy.Rate(2)

        while not rospy.is_shutdown():
                        word = random.randint(0,2)
                        rospy.loginfo(words[word])
                        pub.publish(words[word])
                        rate.sleep()

if __name__== "__main__":

        try:
                talker()

        except rospy.ROSInterruptException:
                pass

