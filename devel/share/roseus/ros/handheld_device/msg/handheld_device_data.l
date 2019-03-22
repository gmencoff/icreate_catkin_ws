;; Auto-generated. Do not edit!


(when (boundp 'handheld_device::handheld_device_data)
  (if (not (find-package "HANDHELD_DEVICE"))
    (make-package "HANDHELD_DEVICE"))
  (shadow 'handheld_device_data (find-package "HANDHELD_DEVICE")))
(unless (find-package "HANDHELD_DEVICE::HANDHELD_DEVICE_DATA")
  (make-package "HANDHELD_DEVICE::HANDHELD_DEVICE_DATA"))

(in-package "ROS")
;;//! \htmlinclude handheld_device_data.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass handheld_device::handheld_device_data
  :super ros::object
  :slots (_device_distance _device_quat _device_accel _device_switch ))

(defmethod handheld_device::handheld_device_data
  (:init
   (&key
    ((:device_distance __device_distance) 0)
    ((:device_quat __device_quat) (instance geometry_msgs::Quaternion :init))
    ((:device_accel __device_accel) (instance geometry_msgs::Accel :init))
    ((:device_switch __device_switch) 0)
    )
   (send-super :init)
   (setq _device_distance (round __device_distance))
   (setq _device_quat __device_quat)
   (setq _device_accel __device_accel)
   (setq _device_switch (round __device_switch))
   self)
  (:device_distance
   (&optional __device_distance)
   (if __device_distance (setq _device_distance __device_distance)) _device_distance)
  (:device_quat
   (&rest __device_quat)
   (if (keywordp (car __device_quat))
       (send* _device_quat __device_quat)
     (progn
       (if __device_quat (setq _device_quat (car __device_quat)))
       _device_quat)))
  (:device_accel
   (&rest __device_accel)
   (if (keywordp (car __device_accel))
       (send* _device_accel __device_accel)
     (progn
       (if __device_accel (setq _device_accel (car __device_accel)))
       _device_accel)))
  (:device_switch
   (&optional __device_switch)
   (if __device_switch (setq _device_switch __device_switch)) _device_switch)
  (:serialization-length
   ()
   (+
    ;; int64 _device_distance
    8
    ;; geometry_msgs/Quaternion _device_quat
    (send _device_quat :serialization-length)
    ;; geometry_msgs/Accel _device_accel
    (send _device_accel :serialization-length)
    ;; int64 _device_switch
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _device_distance
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _device_distance (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _device_distance) (= (length (_device_distance . bv)) 2)) ;; bignum
              (write-long (ash (elt (_device_distance . bv) 0) 0) s)
              (write-long (ash (elt (_device_distance . bv) 1) -1) s))
             ((and (class _device_distance) (= (length (_device_distance . bv)) 1)) ;; big1
              (write-long (elt (_device_distance . bv) 0) s)
              (write-long (if (>= _device_distance 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _device_distance s)(write-long (if (>= _device_distance 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Quaternion _device_quat
       (send _device_quat :serialize s)
     ;; geometry_msgs/Accel _device_accel
       (send _device_accel :serialize s)
     ;; int64 _device_switch
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _device_switch (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _device_switch) (= (length (_device_switch . bv)) 2)) ;; bignum
              (write-long (ash (elt (_device_switch . bv) 0) 0) s)
              (write-long (ash (elt (_device_switch . bv) 1) -1) s))
             ((and (class _device_switch) (= (length (_device_switch . bv)) 1)) ;; big1
              (write-long (elt (_device_switch . bv) 0) s)
              (write-long (if (>= _device_switch 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _device_switch s)(write-long (if (>= _device_switch 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _device_distance
#+(or :alpha :irix6 :x86_64)
      (setf _device_distance (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _device_distance (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Quaternion _device_quat
     (send _device_quat :deserialize buf ptr-) (incf ptr- (send _device_quat :serialization-length))
   ;; geometry_msgs/Accel _device_accel
     (send _device_accel :deserialize buf ptr-) (incf ptr- (send _device_accel :serialization-length))
   ;; int64 _device_switch
#+(or :alpha :irix6 :x86_64)
      (setf _device_switch (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _device_switch (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get handheld_device::handheld_device_data :md5sum-) "894e9b259d1d4e8448e9e2d9ffed9851")
(setf (get handheld_device::handheld_device_data :datatype-) "handheld_device/handheld_device_data")
(setf (get handheld_device::handheld_device_data :definition-)
      "int64 device_distance
geometry_msgs/Quaternion device_quat
geometry_msgs/Accel device_accel
int64 device_switch
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :handheld_device/handheld_device_data "894e9b259d1d4e8448e9e2d9ffed9851")


