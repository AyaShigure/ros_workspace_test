; Auto-generated. Do not edit!


(cl:in-package test_package-msg)


;//! \htmlinclude Hz.msg.html

(cl:defclass <Hz> (roslisp-msg-protocol:ros-message)
  ((Hz
    :reader Hz
    :initarg :Hz
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Hz (<Hz>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hz>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hz)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_package-msg:<Hz> is deprecated: use test_package-msg:Hz instead.")))

(cl:ensure-generic-function 'Hz-val :lambda-list '(m))
(cl:defmethod Hz-val ((m <Hz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_package-msg:Hz-val is deprecated.  Use test_package-msg:Hz instead.")
  (Hz m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Hz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_package-msg:distance-val is deprecated.  Use test_package-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hz>) ostream)
  "Serializes a message object of type '<Hz>"
  (cl:let* ((signed (cl:slot-value msg 'Hz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hz>) istream)
  "Deserializes a message object of type '<Hz>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hz>)))
  "Returns string type for a message object of type '<Hz>"
  "test_package/Hz")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hz)))
  "Returns string type for a message object of type 'Hz"
  "test_package/Hz")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hz>)))
  "Returns md5sum for a message object of type '<Hz>"
  "4cb9cdb75a7d736a7cc332f56659b712")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hz)))
  "Returns md5sum for a message object of type 'Hz"
  "4cb9cdb75a7d736a7cc332f56659b712")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hz>)))
  "Returns full string definition for message of type '<Hz>"
  (cl:format cl:nil "int16 Hz~%float32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hz)))
  "Returns full string definition for message of type 'Hz"
  (cl:format cl:nil "int16 Hz~%float32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hz>))
  (cl:+ 0
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hz>))
  "Converts a ROS message object to a list"
  (cl:list 'Hz
    (cl:cons ':Hz (Hz msg))
    (cl:cons ':distance (distance msg))
))
