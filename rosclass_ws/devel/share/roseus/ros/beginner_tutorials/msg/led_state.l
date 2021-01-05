;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::led_state)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'led_state (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::LED_STATE")
  (make-package "BEGINNER_TUTORIALS::LED_STATE"))

(in-package "ROS")
;;//! \htmlinclude led_state.msg.html


(defclass beginner_tutorials::led_state
  :super ros::object
  :slots (_ledState ))

(defmethod beginner_tutorials::led_state
  (:init
   (&key
    ((:ledState __ledState) "")
    )
   (send-super :init)
   (setq _ledState (string __ledState))
   self)
  (:ledState
   (&optional __ledState)
   (if __ledState (setq _ledState __ledState)) _ledState)
  (:serialization-length
   ()
   (+
    ;; string _ledState
    4 (length _ledState)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ledState
       (write-long (length _ledState) s) (princ _ledState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ledState
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ledState (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::led_state :md5sum-) "2e72d8d4579cf7ba2c7a9cea0cf0c7ab")
(setf (get beginner_tutorials::led_state :datatype-) "beginner_tutorials/led_state")
(setf (get beginner_tutorials::led_state :definition-)
      "string ledState

")



(provide :beginner_tutorials/led_state "2e72d8d4579cf7ba2c7a9cea0cf0c7ab")


