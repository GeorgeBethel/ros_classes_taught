#!/usr/bin/env python

import rospy

import RPi.GPIO as GPIO

from beginner_tutorials.msg import led_state

GPIO.setmode(GPIO.BCM)

motor_a = 17
motor_b = 18
motor_c = 4
motor_d = 15


GPIO.setup(motor_a, GPIO.OUT)
GPIO.setup(motor_b, GPIO.OUT)
GPIO.setup(motor_c, GPIO.OUT)
GPIO.setup(motor_d, GPIO.OUT)


def callback(data):

        button = data.ledState
        
        if button == "F":

            GPIO.output(motor_a, True)
            GPIO.output(motor_b, False)
            GPIO.output(motor_c, True)
            GPIO.output(motor_d, False)

            rospy.loginfo("move forward")

        elif button == "B":

            GPIO.output(motor_a, False)
            GPIO.output(motor_b, True)
            GPIO.output(motor_c, False)
            GPIO.output(motor_d, True)

            rospy.loginfo("move backwards")

        elif button == "L":
            GPIO.output(motor_a, True)
            GPIO.output(motor_b, False)
            GPIO.output(motor_c, False)
            GPIO.output(motor_d, False)

            rospy.loginfo("move left")


        elif button == "R":
             GPIO.output(motor_a, False)
             GPIO.output(motor_b, True)
             GPIO.output(motor_c, True)
             GPIO.output(motor_d, True)

             rospy.loginfo("move right")

  
        elif button == "S":
             GPIO.output(motor_a, False)
             GPIO.output(motor_b, False)
             GPIO.output(motor_c, False)
             GPIO.output(motor_d, False)

             rospy.loginfo("stop movement")


def motor_control():

        rospy.init_node('motor_driver', anonymous = True)

        rospy.Subscriber('keypress', led_state, callback)
        
        rospy.spin()

if __name__=="__main__":

        motor_control()

