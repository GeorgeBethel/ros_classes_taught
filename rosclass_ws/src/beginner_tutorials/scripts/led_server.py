#!/usr/bin/env python
from beginner_tutorials.srv import led, ledResponse
import rospy
import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)
ledPin = 14
GPIO.setup(ledPin, GPIO.OUT)

def switch_led(req):

	print("Returning LedStatus")
	if req.Led_State == "ON":
		GPIO.output(ledPin, True) 
		return ledResponse("Led is on")
	elif req.Led_State == "OFF":
		GPIO.output(ledPin, False)
		return ledResponse("Led is off")

def ledOn_server():
	rospy.init_node("setled_server")
	rospy.Service("set_led", led, switch_led)
	print ("server is ready.................")
	rospy.spin()

ledOn_server()

#if __name__ ==" __main__":
#	ledOn_server()








