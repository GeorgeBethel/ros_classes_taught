; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude led_state.msg.html

(cl:defclass <led_state> (roslisp-msg-protocol:ros-message)
  ((ledState
    :reader ledState
    :initarg :ledState
    :type cl:string
    :initform ""))
)

(cl:defclass led_state (<led_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <led_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'led_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<led_state> is deprecated: use beginner_tutorials-msg:led_state instead.")))

(cl:ensure-generic-function 'ledState-val :lambda-list '(m))
(cl:defmethod ledState-val ((m <led_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:ledState-val is deprecated.  Use beginner_tutorials-msg:ledState instead.")
  (ledState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <led_state>) ostream)
  "Serializes a message object of type '<led_state>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ledState))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ledState))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <led_state>) istream)
  "Deserializes a message object of type '<led_state>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ledState) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ledState) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<led_state>)))
  "Returns string type for a message object of type '<led_state>"
  "beginner_tutorials/led_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'led_state)))
  "Returns string type for a message object of type 'led_state"
  "beginner_tutorials/led_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<led_state>)))
  "Returns md5sum for a message object of type '<led_state>"
  "2e72d8d4579cf7ba2c7a9cea0cf0c7ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'led_state)))
  "Returns md5sum for a message object of type 'led_state"
  "2e72d8d4579cf7ba2c7a9cea0cf0c7ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<led_state>)))
  "Returns full string definition for message of type '<led_state>"
  (cl:format cl:nil "string ledState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'led_state)))
  "Returns full string definition for message of type 'led_state"
  (cl:format cl:nil "string ledState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <led_state>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ledState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <led_state>))
  "Converts a ROS message object to a list"
  (cl:list 'led_state
    (cl:cons ':ledState (ledState msg))
))
