#!/usr/bin/env python

import rospy
from beginner_tutorials.srv import *

def led_client(x):
	rospy.wait_for_service ('set_led')
	try:
		led_state = rospy.ServiceProxy('set_led',led)
		resp1 = led_state(x)
		print(resp1.LedStatus)
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)


if __name__ == "__main__":
	rospy.init_node("led_server_client", anonymous = False)
	x = raw_input("Please enter ON or OFF to control the led: ")
	led_client(x)
