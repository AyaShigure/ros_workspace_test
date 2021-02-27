;; Auto-generated. Do not edit!


(when (boundp 'test_package::Hz)
  (if (not (find-package "TEST_PACKAGE"))
    (make-package "TEST_PACKAGE"))
  (shadow 'Hz (find-package "TEST_PACKAGE")))
(unless (find-package "TEST_PACKAGE::HZ")
  (make-package "TEST_PACKAGE::HZ"))

(in-package "ROS")
;;//! \htmlinclude Hz.msg.html


(defclass test_package::Hz
  :super ros::object
  :slots (_Hz ))

(defmethod test_package::Hz
  (:init
   (&key
    ((:Hz __Hz) 0)
    )
   (send-super :init)
   (setq _Hz (round __Hz))
   self)
  (:Hz
   (&optional __Hz)
   (if __Hz (setq _Hz __Hz)) _Hz)
  (:serialization-length
   ()
   (+
    ;; int16 _Hz
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Hz
       (write-word _Hz s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Hz
     (setq _Hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get test_package::Hz :md5sum-) "b58bcf9bc7477a164c0a92a7080d13dc")
(setf (get test_package::Hz :datatype-) "test_package/Hz")
(setf (get test_package::Hz :definition-)
      "int16 Hz
")



(provide :test_package/Hz "b58bcf9bc7477a164c0a92a7080d13dc")


