; Auto-generated. Do not edit!


(cl:in-package handheld_device-msg)


;//! \htmlinclude handheld_device_data.msg.html

(cl:defclass <handheld_device_data> (roslisp-msg-protocol:ros-message)
  ((device_distance
    :reader device_distance
    :initarg :device_distance
    :type cl:fixnum
    :initform 0)
   (quatx
    :reader quatx
    :initarg :quatx
    :type cl:float
    :initform 0.0)
   (quaty
    :reader quaty
    :initarg :quaty
    :type cl:float
    :initform 0.0)
   (quatz
    :reader quatz
    :initarg :quatz
    :type cl:float
    :initform 0.0)
   (quatw
    :reader quatw
    :initarg :quatw
    :type cl:float
    :initform 0.0)
   (accelx
    :reader accelx
    :initarg :accelx
    :type cl:float
    :initform 0.0)
   (accely
    :reader accely
    :initarg :accely
    :type cl:float
    :initform 0.0)
   (accelz
    :reader accelz
    :initarg :accelz
    :type cl:float
    :initform 0.0)
   (device_switch
    :reader device_switch
    :initarg :device_switch
    :type cl:fixnum
    :initform 0))
)

(cl:defclass handheld_device_data (<handheld_device_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <handheld_device_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'handheld_device_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name handheld_device-msg:<handheld_device_data> is deprecated: use handheld_device-msg:handheld_device_data instead.")))

(cl:ensure-generic-function 'device_distance-val :lambda-list '(m))
(cl:defmethod device_distance-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:device_distance-val is deprecated.  Use handheld_device-msg:device_distance instead.")
  (device_distance m))

(cl:ensure-generic-function 'quatx-val :lambda-list '(m))
(cl:defmethod quatx-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:quatx-val is deprecated.  Use handheld_device-msg:quatx instead.")
  (quatx m))

(cl:ensure-generic-function 'quaty-val :lambda-list '(m))
(cl:defmethod quaty-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:quaty-val is deprecated.  Use handheld_device-msg:quaty instead.")
  (quaty m))

(cl:ensure-generic-function 'quatz-val :lambda-list '(m))
(cl:defmethod quatz-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:quatz-val is deprecated.  Use handheld_device-msg:quatz instead.")
  (quatz m))

(cl:ensure-generic-function 'quatw-val :lambda-list '(m))
(cl:defmethod quatw-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:quatw-val is deprecated.  Use handheld_device-msg:quatw instead.")
  (quatw m))

(cl:ensure-generic-function 'accelx-val :lambda-list '(m))
(cl:defmethod accelx-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:accelx-val is deprecated.  Use handheld_device-msg:accelx instead.")
  (accelx m))

(cl:ensure-generic-function 'accely-val :lambda-list '(m))
(cl:defmethod accely-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:accely-val is deprecated.  Use handheld_device-msg:accely instead.")
  (accely m))

(cl:ensure-generic-function 'accelz-val :lambda-list '(m))
(cl:defmethod accelz-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:accelz-val is deprecated.  Use handheld_device-msg:accelz instead.")
  (accelz m))

(cl:ensure-generic-function 'device_switch-val :lambda-list '(m))
(cl:defmethod device_switch-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:device_switch-val is deprecated.  Use handheld_device-msg:device_switch instead.")
  (device_switch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <handheld_device_data>) ostream)
  "Serializes a message object of type '<handheld_device_data>"
  (cl:let* ((signed (cl:slot-value msg 'device_distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'quatx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'quaty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'quatz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'quatw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accely))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'device_switch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <handheld_device_data>) istream)
  "Deserializes a message object of type '<handheld_device_data>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_distance) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quatx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quaty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quatz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quatw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accely) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_switch) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<handheld_device_data>)))
  "Returns string type for a message object of type '<handheld_device_data>"
  "handheld_device/handheld_device_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'handheld_device_data)))
  "Returns string type for a message object of type 'handheld_device_data"
  "handheld_device/handheld_device_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<handheld_device_data>)))
  "Returns md5sum for a message object of type '<handheld_device_data>"
  "5f3fc4e797e13ce34dcd40452711b663")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'handheld_device_data)))
  "Returns md5sum for a message object of type 'handheld_device_data"
  "5f3fc4e797e13ce34dcd40452711b663")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<handheld_device_data>)))
  "Returns full string definition for message of type '<handheld_device_data>"
  (cl:format cl:nil "int16 device_distance~%float32 quatx~%float32 quaty~%float32 quatz~%float32 quatw~%float32 accelx~%float32 accely~%float32 accelz~%int8 device_switch~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'handheld_device_data)))
  "Returns full string definition for message of type 'handheld_device_data"
  (cl:format cl:nil "int16 device_distance~%float32 quatx~%float32 quaty~%float32 quatz~%float32 quatw~%float32 accelx~%float32 accely~%float32 accelz~%int8 device_switch~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <handheld_device_data>))
  (cl:+ 0
     2
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <handheld_device_data>))
  "Converts a ROS message object to a list"
  (cl:list 'handheld_device_data
    (cl:cons ':device_distance (device_distance msg))
    (cl:cons ':quatx (quatx msg))
    (cl:cons ':quaty (quaty msg))
    (cl:cons ':quatz (quatz msg))
    (cl:cons ':quatw (quatw msg))
    (cl:cons ':accelx (accelx msg))
    (cl:cons ':accely (accely msg))
    (cl:cons ':accelz (accelz msg))
    (cl:cons ':device_switch (device_switch msg))
))
