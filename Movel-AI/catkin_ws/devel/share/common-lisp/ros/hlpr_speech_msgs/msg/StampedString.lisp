; Auto-generated. Do not edit!


(cl:in-package hlpr_speech_msgs-msg)


;//! \htmlinclude StampedString.msg.html

(cl:defclass <StampedString> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (keyphrase
    :reader keyphrase
    :initarg :keyphrase
    :type cl:string
    :initform ""))
)

(cl:defclass StampedString (<StampedString>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampedString>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampedString)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_speech_msgs-msg:<StampedString> is deprecated: use hlpr_speech_msgs-msg:StampedString instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <StampedString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_speech_msgs-msg:stamp-val is deprecated.  Use hlpr_speech_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'keyphrase-val :lambda-list '(m))
(cl:defmethod keyphrase-val ((m <StampedString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_speech_msgs-msg:keyphrase-val is deprecated.  Use hlpr_speech_msgs-msg:keyphrase instead.")
  (keyphrase m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampedString>) ostream)
  "Serializes a message object of type '<StampedString>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'keyphrase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'keyphrase))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampedString>) istream)
  "Deserializes a message object of type '<StampedString>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'keyphrase) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'keyphrase) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampedString>)))
  "Returns string type for a message object of type '<StampedString>"
  "hlpr_speech_msgs/StampedString")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampedString)))
  "Returns string type for a message object of type 'StampedString"
  "hlpr_speech_msgs/StampedString")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampedString>)))
  "Returns md5sum for a message object of type '<StampedString>"
  "dab84539140abbb7370c583798723196")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampedString)))
  "Returns md5sum for a message object of type 'StampedString"
  "dab84539140abbb7370c583798723196")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampedString>)))
  "Returns full string definition for message of type '<StampedString>"
  (cl:format cl:nil "# Stamped string message to be used in speech recognition~%~%#Time stamp~%time stamp~%#Detected keyphrase~%string keyphrase~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampedString)))
  "Returns full string definition for message of type 'StampedString"
  (cl:format cl:nil "# Stamped string message to be used in speech recognition~%~%#Time stamp~%time stamp~%#Detected keyphrase~%string keyphrase~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampedString>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'keyphrase))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampedString>))
  "Converts a ROS message object to a list"
  (cl:list 'StampedString
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':keyphrase (keyphrase msg))
))
