; Auto-generated. Do not edit!


(cl:in-package test_package-msg)


;//! \htmlinclude Motor_control.msg.html

(cl:defclass <Motor_control> (roslisp-msg-protocol:ros-message)
  ((left_speed
    :reader left_speed
    :initarg :left_speed
    :type cl:fixnum
    :initform 0)
   (left_duration
    :reader left_duration
    :initarg :left_duration
    :type cl:float
    :initform 0.0)
   (right_speed
    :reader right_speed
    :initarg :right_speed
    :type cl:fixnum
    :initform 0)
   (right_duration
    :reader right_duration
    :initarg :right_duration
    :type cl:float
    :initform 0.0)
   (Hz
    :reader Hz
    :initarg :Hz
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Motor_control (<Motor_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motor_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motor_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_package-msg:<Motor_control> is deprecated: use test_package-msg:Motor_control instead.")))

(cl:ensure-generic-function 'left_speed-val :lambda-list '(m))
(cl:defmethod left_speed-val ((m <Motor_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_package-msg:left_speed-val is deprecated.  Use test_package-msg:left_speed instead.")
  (left_speed m))

(cl:ensure-generic-function 'left_duration-val :lambda-list '(m))
(cl:defmethod left_duration-val ((m <Motor_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_package-msg:left_duration-val is deprecated.  Use test_package-msg:left_duration instead.")
  (left_duration m))

(cl:ensure-generic-function 'right_speed-val :lambda-list '(m))
(cl:defmethod right_speed-val ((m <Motor_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_package-msg:right_speed-val is deprecated.  Use test_package-msg:right_speed instead.")
  (right_speed m))

(cl:ensure-generic-function 'right_duration-val :lambda-list '(m))
(cl:defmethod right_duration-val ((m <Motor_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_package-msg:right_duration-val is deprecated.  Use test_package-msg:right_duration instead.")
  (right_duration m))

(cl:ensure-generic-function 'Hz-val :lambda-list '(m))
(cl:defmethod Hz-val ((m <Motor_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_package-msg:Hz-val is deprecated.  Use test_package-msg:Hz instead.")
  (Hz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motor_control>) ostream)
  "Serializes a message object of type '<Motor_control>"
  (cl:let* ((signed (cl:slot-value msg 'left_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'right_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Hz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motor_control>) istream)
  "Deserializes a message object of type '<Motor_control>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motor_control>)))
  "Returns string type for a message object of type '<Motor_control>"
  "test_package/Motor_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motor_control)))
  "Returns string type for a message object of type 'Motor_control"
  "test_package/Motor_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motor_control>)))
  "Returns md5sum for a message object of type '<Motor_control>"
  "4e50ba1e73541c0fce782268f48a6992")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motor_control)))
  "Returns md5sum for a message object of type 'Motor_control"
  "4e50ba1e73541c0fce782268f48a6992")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motor_control>)))
  "Returns full string definition for message of type '<Motor_control>"
  (cl:format cl:nil "int16 left_speed~%float32 left_duration~%int16 right_speed~%float32 right_duration~%int16 Hz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motor_control)))
  "Returns full string definition for message of type 'Motor_control"
  (cl:format cl:nil "int16 left_speed~%float32 left_duration~%int16 right_speed~%float32 right_duration~%int16 Hz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motor_control>))
  (cl:+ 0
     2
     4
     2
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motor_control>))
  "Converts a ROS message object to a list"
  (cl:list 'Motor_control
    (cl:cons ':left_speed (left_speed msg))
    (cl:cons ':left_duration (left_duration msg))
    (cl:cons ':right_speed (right_speed msg))
    (cl:cons ':right_duration (right_duration msg))
    (cl:cons ':Hz (Hz msg))
))
