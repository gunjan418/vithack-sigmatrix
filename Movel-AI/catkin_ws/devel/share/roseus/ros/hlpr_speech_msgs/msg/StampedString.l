;; Auto-generated. Do not edit!


(when (boundp 'hlpr_speech_msgs::StampedString)
  (if (not (find-package "HLPR_SPEECH_MSGS"))
    (make-package "HLPR_SPEECH_MSGS"))
  (shadow 'StampedString (find-package "HLPR_SPEECH_MSGS")))
(unless (find-package "HLPR_SPEECH_MSGS::STAMPEDSTRING")
  (make-package "HLPR_SPEECH_MSGS::STAMPEDSTRING"))

(in-package "ROS")
;;//! \htmlinclude StampedString.msg.html


(defclass hlpr_speech_msgs::StampedString
  :super ros::object
  :slots (_stamp _keyphrase ))

(defmethod hlpr_speech_msgs::StampedString
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:keyphrase __keyphrase) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _keyphrase (string __keyphrase))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:keyphrase
   (&optional __keyphrase)
   (if __keyphrase (setq _keyphrase __keyphrase)) _keyphrase)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _keyphrase
    4 (length _keyphrase)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _keyphrase
       (write-long (length _keyphrase) s) (princ _keyphrase s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _keyphrase
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _keyphrase (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hlpr_speech_msgs::StampedString :md5sum-) "dab84539140abbb7370c583798723196")
(setf (get hlpr_speech_msgs::StampedString :datatype-) "hlpr_speech_msgs/StampedString")
(setf (get hlpr_speech_msgs::StampedString :definition-)
      "# Stamped string message to be used in speech recognition

#Time stamp
time stamp
#Detected keyphrase
string keyphrase

")



(provide :hlpr_speech_msgs/StampedString "dab84539140abbb7370c583798723196")


