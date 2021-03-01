;; Auto-generated. Do not edit!


(when (boundp 'test_package::Motor_control)
  (if (not (find-package "TEST_PACKAGE"))
    (make-package "TEST_PACKAGE"))
  (shadow 'Motor_control (find-package "TEST_PACKAGE")))
(unless (find-package "TEST_PACKAGE::MOTOR_CONTROL")
  (make-package "TEST_PACKAGE::MOTOR_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Motor_control.msg.html


(defclass test_package::Motor_control
  :super ros::object
  :slots (_left_speed _left_duration _right_speed _right_duration _Hz ))

(defmethod test_package::Motor_control
  (:init
   (&key
    ((:left_speed __left_speed) 0)
    ((:left_duration __left_duration) 0.0)
    ((:right_speed __right_speed) 0)
    ((:right_duration __right_duration) 0.0)
    ((:Hz __Hz) 0)
    )
   (send-super :init)
   (setq _left_speed (round __left_speed))
   (setq _left_duration (float __left_duration))
   (setq _right_speed (round __right_speed))
   (setq _right_duration (float __right_duration))
   (setq _Hz (round __Hz))
   self)
  (:left_speed
   (&optional __left_speed)
   (if __left_speed (setq _left_speed __left_speed)) _left_speed)
  (:left_duration
   (&optional __left_duration)
   (if __left_duration (setq _left_duration __left_duration)) _left_duration)
  (:right_speed
   (&optional __right_speed)
   (if __right_speed (setq _right_speed __right_speed)) _right_speed)
  (:right_duration
   (&optional __right_duration)
   (if __right_duration (setq _right_duration __right_duration)) _right_duration)
  (:Hz
   (&optional __Hz)
   (if __Hz (setq _Hz __Hz)) _Hz)
  (:serialization-length
   ()
   (+
    ;; int16 _left_speed
    2
    ;; float32 _left_duration
    4
    ;; int16 _right_speed
    2
    ;; float32 _right_duration
    4
    ;; int16 _Hz
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _left_speed
       (write-word _left_speed s)
     ;; float32 _left_duration
       (sys::poke _left_duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _right_speed
       (write-word _right_speed s)
     ;; float32 _right_duration
       (sys::poke _right_duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _Hz
       (write-word _Hz s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _left_speed
     (setq _left_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _left_duration
     (setq _left_duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _right_speed
     (setq _right_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _right_duration
     (setq _right_duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _Hz
     (setq _Hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get test_package::Motor_control :md5sum-) "4e50ba1e73541c0fce782268f48a6992")
(setf (get test_package::Motor_control :datatype-) "test_package/Motor_control")
(setf (get test_package::Motor_control :definition-)
      "int16 left_speed
float32 left_duration
int16 right_speed
float32 right_duration
int16 Hz
")



(provide :test_package/Motor_control "4e50ba1e73541c0fce782268f48a6992")


