#!/usr/bin/env python
import rospy
from beginner_tutorials.msg import led_state


def run_led():
        led = led_state()

        pub = rospy.Publisher('keypress', led_state, queue_size = 10)

        rospy.init_node("key_board_press", anonymous = True)

        rate = rospy.Rate(2)

        while not rospy.is_shutdown():
                key_press = raw_input("please press a button on the keyboard: ")
                led.ledState = key_press
                pub.publish(led)
                rate.sleep()

if __name__== "__main__":

        try:
                run_led()
        except rospy.ROSInterruptException:
                pass
