#!/usr/bin/env python

import rospy

import RPi.GPIO as GPIO

from beginner_tutorials.msg import led_state

GPIO.setmode(GPIO.BCM)

ledpin = 14

GPIO.setup(ledpin, GPIO.OUT)


def callback(data):

        button = data.ledState
        
        if button == "F":

            GPIO.output(ledpin, True)

            rospy.loginfo("LED on")

        elif button == "B":

            GPIO.output(ledpin, False)

            rospy.loginfo("LED off")

def led_control():

        rospy.init_node('led_control', anonymous = True)

        rospy.Subscriber('keypress', led_state, callback)
        
        rospy.spin()

if __name__=="__main__":

        led_control()

