
(cl:in-package :asdf)

(defsystem "hlpr_speech_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SpeechService" :depends-on ("_package_SpeechService"))
    (:file "_package_SpeechService" :depends-on ("_package"))
  ))