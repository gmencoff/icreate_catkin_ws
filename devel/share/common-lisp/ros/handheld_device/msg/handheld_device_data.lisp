; Auto-generated. Do not edit!


(cl:in-package handheld_device-msg)


;//! \htmlinclude handheld_device_data.msg.html

(cl:defclass <handheld_device_data> (roslisp-msg-protocol:ros-message)
  ((device_distance
    :reader device_distance
    :initarg :device_distance
    :type cl:integer
    :initform 0)
   (device_quat
    :reader device_quat
    :initarg :device_quat
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (device_accel
    :reader device_accel
    :initarg :device_accel
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (device_switch
    :reader device_switch
    :initarg :device_switch
    :type cl:integer
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

(cl:ensure-generic-function 'device_quat-val :lambda-list '(m))
(cl:defmethod device_quat-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:device_quat-val is deprecated.  Use handheld_device-msg:device_quat instead.")
  (device_quat m))

(cl:ensure-generic-function 'device_accel-val :lambda-list '(m))
(cl:defmethod device_accel-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:device_accel-val is deprecated.  Use handheld_device-msg:device_accel instead.")
  (device_accel m))

(cl:ensure-generic-function 'device_switch-val :lambda-list '(m))
(cl:defmethod device_switch-val ((m <handheld_device_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader handheld_device-msg:device_switch-val is deprecated.  Use handheld_device-msg:device_switch instead.")
  (device_switch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <handheld_device_data>) ostream)
  "Serializes a message object of type '<handheld_device_data>"
  (cl:let* ((signed (cl:slot-value msg 'device_distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'device_quat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'device_accel) ostream)
  (cl:let* ((signed (cl:slot-value msg 'device_switch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <handheld_device_data>) istream)
  "Deserializes a message object of type '<handheld_device_data>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_distance) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'device_quat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'device_accel) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_switch) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
  "894e9b259d1d4e8448e9e2d9ffed9851")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'handheld_device_data)))
  "Returns md5sum for a message object of type 'handheld_device_data"
  "894e9b259d1d4e8448e9e2d9ffed9851")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<handheld_device_data>)))
  "Returns full string definition for message of type '<handheld_device_data>"
  (cl:format cl:nil "int64 device_distance~%geometry_msgs/Quaternion device_quat~%geometry_msgs/Accel device_accel~%int64 device_switch~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'handheld_device_data)))
  "Returns full string definition for message of type 'handheld_device_data"
  (cl:format cl:nil "int64 device_distance~%geometry_msgs/Quaternion device_quat~%geometry_msgs/Accel device_accel~%int64 device_switch~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <handheld_device_data>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'device_quat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'device_accel))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <handheld_device_data>))
  "Converts a ROS message object to a list"
  (cl:list 'handheld_device_data
    (cl:cons ':device_distance (device_distance msg))
    (cl:cons ':device_quat (device_quat msg))
    (cl:cons ':device_accel (device_accel msg))
    (cl:cons ':device_switch (device_switch msg))
))
