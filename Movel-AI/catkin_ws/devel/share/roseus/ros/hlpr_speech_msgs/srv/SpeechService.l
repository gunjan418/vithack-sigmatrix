;; Auto-generated. Do not edit!


(when (boundp 'hlpr_speech_msgs::SpeechService)
  (if (not (find-package "HLPR_SPEECH_MSGS"))
    (make-package "HLPR_SPEECH_MSGS"))
  (shadow 'SpeechService (find-package "HLPR_SPEECH_MSGS")))
(unless (find-package "HLPR_SPEECH_MSGS::SPEECHSERVICE")
  (make-package "HLPR_SPEECH_MSGS::SPEECHSERVICE"))
(unless (find-package "HLPR_SPEECH_MSGS::SPEECHSERVICEREQUEST")
  (make-package "HLPR_SPEECH_MSGS::SPEECHSERVICEREQUEST"))
(unless (find-package "HLPR_SPEECH_MSGS::SPEECHSERVICERESPONSE")
  (make-package "HLPR_SPEECH_MSGS::SPEECHSERVICERESPONSE"))

(in-package "ROS")





(defclass hlpr_speech_msgs::SpeechServiceRequest
  :super ros::object
  :slots (_get_last ))

(defmethod hlpr_speech_msgs::SpeechServiceRequest
  (:init
   (&key
    ((:get_last __get_last) nil)
    )
   (send-super :init)
   (setq _get_last __get_last)
   self)
  (:get_last
   (&optional (__get_last :null))
   (if (not (eq __get_last :null)) (setq _get_last __get_last)) _get_last)
  (:serialization-length
   ()
   (+
    ;; bool _get_last
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _get_last
       (if _get_last (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _get_last
     (setq _get_last (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hlpr_speech_msgs::SpeechServiceResponse
  :super ros::object
  :slots (_speech_cmd ))

(defmethod hlpr_speech_msgs::SpeechServiceResponse
  (:init
   (&key
    ((:speech_cmd __speech_cmd) "")
    )
   (send-super :init)
   (setq _speech_cmd (string __speech_cmd))
   self)
  (:speech_cmd
   (&optional __speech_cmd)
   (if __speech_cmd (setq _speech_cmd __speech_cmd)) _speech_cmd)
  (:serialization-length
   ()
   (+
    ;; string _speech_cmd
    4 (length _speech_cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _speech_cmd
       (write-long (length _speech_cmd) s) (princ _speech_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _speech_cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speech_cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hlpr_speech_msgs::SpeechService
  :super ros::object
  :slots ())

(setf (get hlpr_speech_msgs::SpeechService :md5sum-) "8f7ae7a65dc30cceb3e782937b879015")
(setf (get hlpr_speech_msgs::SpeechService :datatype-) "hlpr_speech_msgs/SpeechService")
(setf (get hlpr_speech_msgs::SpeechService :request) hlpr_speech_msgs::SpeechServiceRequest)
(setf (get hlpr_speech_msgs::SpeechService :response) hlpr_speech_msgs::SpeechServiceResponse)

(defmethod hlpr_speech_msgs::SpeechServiceRequest
  (:response () (instance hlpr_speech_msgs::SpeechServiceResponse :init)))

(setf (get hlpr_speech_msgs::SpeechServiceRequest :md5sum-) "8f7ae7a65dc30cceb3e782937b879015")
(setf (get hlpr_speech_msgs::SpeechServiceRequest :datatype-) "hlpr_speech_msgs/SpeechServiceRequest")
(setf (get hlpr_speech_msgs::SpeechServiceRequest :definition-)
      "#request values
bool get_last
---
#response values
string speech_cmd

")

(setf (get hlpr_speech_msgs::SpeechServiceResponse :md5sum-) "8f7ae7a65dc30cceb3e782937b879015")
(setf (get hlpr_speech_msgs::SpeechServiceResponse :datatype-) "hlpr_speech_msgs/SpeechServiceResponse")
(setf (get hlpr_speech_msgs::SpeechServiceResponse :definition-)
      "#request values
bool get_last
---
#response values
string speech_cmd

")



(provide :hlpr_speech_msgs/SpeechService "8f7ae7a65dc30cceb3e782937b879015")


