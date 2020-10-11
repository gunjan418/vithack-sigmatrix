; Auto-generated. Do not edit!


(cl:in-package hlpr_speech_msgs-srv)


;//! \htmlinclude SpeechService-request.msg.html

(cl:defclass <SpeechService-request> (roslisp-msg-protocol:ros-message)
  ((get_last
    :reader get_last
    :initarg :get_last
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpeechService-request (<SpeechService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_speech_msgs-srv:<SpeechService-request> is deprecated: use hlpr_speech_msgs-srv:SpeechService-request instead.")))

(cl:ensure-generic-function 'get_last-val :lambda-list '(m))
(cl:defmethod get_last-val ((m <SpeechService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_speech_msgs-srv:get_last-val is deprecated.  Use hlpr_speech_msgs-srv:get_last instead.")
  (get_last m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechService-request>) ostream)
  "Serializes a message object of type '<SpeechService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_last) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechService-request>) istream)
  "Deserializes a message object of type '<SpeechService-request>"
    (cl:setf (cl:slot-value msg 'get_last) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechService-request>)))
  "Returns string type for a service object of type '<SpeechService-request>"
  "hlpr_speech_msgs/SpeechServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechService-request)))
  "Returns string type for a service object of type 'SpeechService-request"
  "hlpr_speech_msgs/SpeechServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechService-request>)))
  "Returns md5sum for a message object of type '<SpeechService-request>"
  "8f7ae7a65dc30cceb3e782937b879015")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechService-request)))
  "Returns md5sum for a message object of type 'SpeechService-request"
  "8f7ae7a65dc30cceb3e782937b879015")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechService-request>)))
  "Returns full string definition for message of type '<SpeechService-request>"
  (cl:format cl:nil "#request values~%bool get_last~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechService-request)))
  "Returns full string definition for message of type 'SpeechService-request"
  (cl:format cl:nil "#request values~%bool get_last~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechService-request
    (cl:cons ':get_last (get_last msg))
))
;//! \htmlinclude SpeechService-response.msg.html

(cl:defclass <SpeechService-response> (roslisp-msg-protocol:ros-message)
  ((speech_cmd
    :reader speech_cmd
    :initarg :speech_cmd
    :type cl:string
    :initform ""))
)

(cl:defclass SpeechService-response (<SpeechService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_speech_msgs-srv:<SpeechService-response> is deprecated: use hlpr_speech_msgs-srv:SpeechService-response instead.")))

(cl:ensure-generic-function 'speech_cmd-val :lambda-list '(m))
(cl:defmethod speech_cmd-val ((m <SpeechService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_speech_msgs-srv:speech_cmd-val is deprecated.  Use hlpr_speech_msgs-srv:speech_cmd instead.")
  (speech_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechService-response>) ostream)
  "Serializes a message object of type '<SpeechService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'speech_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'speech_cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechService-response>) istream)
  "Deserializes a message object of type '<SpeechService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speech_cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'speech_cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechService-response>)))
  "Returns string type for a service object of type '<SpeechService-response>"
  "hlpr_speech_msgs/SpeechServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechService-response)))
  "Returns string type for a service object of type 'SpeechService-response"
  "hlpr_speech_msgs/SpeechServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechService-response>)))
  "Returns md5sum for a message object of type '<SpeechService-response>"
  "8f7ae7a65dc30cceb3e782937b879015")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechService-response)))
  "Returns md5sum for a message object of type 'SpeechService-response"
  "8f7ae7a65dc30cceb3e782937b879015")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechService-response>)))
  "Returns full string definition for message of type '<SpeechService-response>"
  (cl:format cl:nil "#response values~%string speech_cmd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechService-response)))
  "Returns full string definition for message of type 'SpeechService-response"
  (cl:format cl:nil "#response values~%string speech_cmd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'speech_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechService-response
    (cl:cons ':speech_cmd (speech_cmd msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpeechService)))
  'SpeechService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpeechService)))
  'SpeechService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechService)))
  "Returns string type for a service object of type '<SpeechService>"
  "hlpr_speech_msgs/SpeechService")