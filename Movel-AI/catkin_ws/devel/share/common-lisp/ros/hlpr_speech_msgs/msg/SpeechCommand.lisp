; Auto-generated. Do not edit!


(cl:in-package hlpr_speech_msgs-msg)


;//! \htmlinclude SpeechCommand.msg.html

(cl:defclass <SpeechCommand> (roslisp-msg-protocol:ros-message)
  ((stamped_string
    :reader stamped_string
    :initarg :stamped_string
    :type hlpr_speech_msgs-msg:StampedString
    :initform (cl:make-instance 'hlpr_speech_msgs-msg:StampedString))
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass SpeechCommand (<SpeechCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_speech_msgs-msg:<SpeechCommand> is deprecated: use hlpr_speech_msgs-msg:SpeechCommand instead.")))

(cl:ensure-generic-function 'stamped_string-val :lambda-list '(m))
(cl:defmethod stamped_string-val ((m <SpeechCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_speech_msgs-msg:stamped_string-val is deprecated.  Use hlpr_speech_msgs-msg:stamped_string instead.")
  (stamped_string m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SpeechCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_speech_msgs-msg:command-val is deprecated.  Use hlpr_speech_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechCommand>) ostream)
  "Serializes a message object of type '<SpeechCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stamped_string) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechCommand>) istream)
  "Deserializes a message object of type '<SpeechCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stamped_string) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechCommand>)))
  "Returns string type for a message object of type '<SpeechCommand>"
  "hlpr_speech_msgs/SpeechCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechCommand)))
  "Returns string type for a message object of type 'SpeechCommand"
  "hlpr_speech_msgs/SpeechCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechCommand>)))
  "Returns md5sum for a message object of type '<SpeechCommand>"
  "8ecdf8b4af928b454a75935476d11010")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechCommand)))
  "Returns md5sum for a message object of type 'SpeechCommand"
  "8ecdf8b4af928b454a75935476d11010")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechCommand>)))
  "Returns full string definition for message of type '<SpeechCommand>"
  (cl:format cl:nil "# This messages includes the mapping from~%# the detected keyphrase to the command~%~%# Detected keyphrase and its time~%StampedString stamped_string~%# The mapped speech command~%string command~%~%~%~%================================================================================~%MSG: hlpr_speech_msgs/StampedString~%# Stamped string message to be used in speech recognition~%~%#Time stamp~%time stamp~%#Detected keyphrase~%string keyphrase~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechCommand)))
  "Returns full string definition for message of type 'SpeechCommand"
  (cl:format cl:nil "# This messages includes the mapping from~%# the detected keyphrase to the command~%~%# Detected keyphrase and its time~%StampedString stamped_string~%# The mapped speech command~%string command~%~%~%~%================================================================================~%MSG: hlpr_speech_msgs/StampedString~%# Stamped string message to be used in speech recognition~%~%#Time stamp~%time stamp~%#Detected keyphrase~%string keyphrase~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stamped_string))
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechCommand
    (cl:cons ':stamped_string (stamped_string msg))
    (cl:cons ':command (command msg))
))
