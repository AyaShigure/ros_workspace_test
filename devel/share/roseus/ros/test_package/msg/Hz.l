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
  :slots (_Hz _distance ))

(defmethod test_package::Hz
  (:init
   (&key
    ((:Hz __Hz) 0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _Hz (round __Hz))
   (setq _distance (float __distance))
   self)
  (:Hz
   (&optional __Hz)
   (if __Hz (setq _Hz __Hz)) _Hz)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int16 _Hz
    2
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Hz
       (write-word _Hz s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Hz
     (setq _Hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_package::Hz :md5sum-) "4cb9cdb75a7d736a7cc332f56659b712")
(setf (get test_package::Hz :datatype-) "test_package/Hz")
(setf (get test_package::Hz :definition-)
      "int16 Hz
float32 distance
")



(provide :test_package/Hz "4cb9cdb75a7d736a7cc332f56659b712")


