;; Auto-generated. Do not edit!


(when (boundp 'hlpr_speech_msgs::SpeechCommand)
  (if (not (find-package "HLPR_SPEECH_MSGS"))
    (make-package "HLPR_SPEECH_MSGS"))
  (shadow 'SpeechCommand (find-package "HLPR_SPEECH_MSGS")))
(unless (find-package "HLPR_SPEECH_MSGS::SPEECHCOMMAND")
  (make-package "HLPR_SPEECH_MSGS::SPEECHCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SpeechCommand.msg.html


(defclass hlpr_speech_msgs::SpeechCommand
  :super ros::object
  :slots (_stamped_string _command ))

(defmethod hlpr_speech_msgs::SpeechCommand
  (:init
   (&key
    ((:stamped_string __stamped_string) (instance hlpr_speech_msgs::StampedString :init))
    ((:command __command) "")
    )
   (send-super :init)
   (setq _stamped_string __stamped_string)
   (setq _command (string __command))
   self)
  (:stamped_string
   (&rest __stamped_string)
   (if (keywordp (car __stamped_string))
       (send* _stamped_string __stamped_string)
     (progn
       (if __stamped_string (setq _stamped_string (car __stamped_string)))
       _stamped_string)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; hlpr_speech_msgs/StampedString _stamped_string
    (send _stamped_string :serialization-length)
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hlpr_speech_msgs/StampedString _stamped_string
       (send _stamped_string :serialize s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hlpr_speech_msgs/StampedString _stamped_string
     (send _stamped_string :deserialize buf ptr-) (incf ptr- (send _stamped_string :serialization-length))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hlpr_speech_msgs::SpeechCommand :md5sum-) "8ecdf8b4af928b454a75935476d11010")
(setf (get hlpr_speech_msgs::SpeechCommand :datatype-) "hlpr_speech_msgs/SpeechCommand")
(setf (get hlpr_speech_msgs::SpeechCommand :definition-)
      "# This messages includes the mapping from
# the detected keyphrase to the command

# Detected keyphrase and its time
StampedString stamped_string
# The mapped speech command
string command



================================================================================
MSG: hlpr_speech_msgs/StampedString
# Stamped string message to be used in speech recognition

#Time stamp
time stamp
#Detected keyphrase
string keyphrase

")



(provide :hlpr_speech_msgs/SpeechCommand "8ecdf8b4af928b454a75935476d11010")


