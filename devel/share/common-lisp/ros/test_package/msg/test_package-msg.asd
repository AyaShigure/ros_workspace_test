
(cl:in-package :asdf)

(defsystem "test_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Hz" :depends-on ("_package_Hz"))
    (:file "_package_Hz" :depends-on ("_package"))
    (:file "Motor_control" :depends-on ("_package_Motor_control"))
    (:file "_package_Motor_control" :depends-on ("_package"))
  ))