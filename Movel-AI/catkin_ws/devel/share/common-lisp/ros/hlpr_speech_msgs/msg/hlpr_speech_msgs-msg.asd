
(cl:in-package :asdf)

(defsystem "hlpr_speech_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SpeechCommand" :depends-on ("_package_SpeechCommand"))
    (:file "_package_SpeechCommand" :depends-on ("_package"))
    (:file "StampedString" :depends-on ("_package_StampedString"))
    (:file "_package_StampedString" :depends-on ("_package"))
  ))