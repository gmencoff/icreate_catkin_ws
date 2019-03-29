;; Auto-generated. Do not edit!


(when (boundp 'handheld_device::handheld_device_data)
  (if (not (find-package "HANDHELD_DEVICE"))
    (make-package "HANDHELD_DEVICE"))
  (shadow 'handheld_device_data (find-package "HANDHELD_DEVICE")))
(unless (find-package "HANDHELD_DEVICE::HANDHELD_DEVICE_DATA")
  (make-package "HANDHELD_DEVICE::HANDHELD_DEVICE_DATA"))

(in-package "ROS")
;;//! \htmlinclude handheld_device_data.msg.html


(defclass handheld_device::handheld_device_data
  :super ros::object
  :slots (_device_distance _quatx _quaty _quatz _quatw _accelx _accely _accelz _device_switch ))

(defmethod handheld_device::handheld_device_data
  (:init
   (&key
    ((:device_distance __device_distance) 0)
    ((:quatx __quatx) 0.0)
    ((:quaty __quaty) 0.0)
    ((:quatz __quatz) 0.0)
    ((:quatw __quatw) 0.0)
    ((:accelx __accelx) 0.0)
    ((:accely __accely) 0.0)
    ((:accelz __accelz) 0.0)
    ((:device_switch __device_switch) 0)
    )
   (send-super :init)
   (setq _device_distance (round __device_distance))
   (setq _quatx (float __quatx))
   (setq _quaty (float __quaty))
   (setq _quatz (float __quatz))
   (setq _quatw (float __quatw))
   (setq _accelx (float __accelx))
   (setq _accely (float __accely))
   (setq _accelz (float __accelz))
   (setq _device_switch (round __device_switch))
   self)
  (:device_distance
   (&optional __device_distance)
   (if __device_distance (setq _device_distance __device_distance)) _device_distance)
  (:quatx
   (&optional __quatx)
   (if __quatx (setq _quatx __quatx)) _quatx)
  (:quaty
   (&optional __quaty)
   (if __quaty (setq _quaty __quaty)) _quaty)
  (:quatz
   (&optional __quatz)
   (if __quatz (setq _quatz __quatz)) _quatz)
  (:quatw
   (&optional __quatw)
   (if __quatw (setq _quatw __quatw)) _quatw)
  (:accelx
   (&optional __accelx)
   (if __accelx (setq _accelx __accelx)) _accelx)
  (:accely
   (&optional __accely)
   (if __accely (setq _accely __accely)) _accely)
  (:accelz
   (&optional __accelz)
   (if __accelz (setq _accelz __accelz)) _accelz)
  (:device_switch
   (&optional __device_switch)
   (if __device_switch (setq _device_switch __device_switch)) _device_switch)
  (:serialization-length
   ()
   (+
    ;; int16 _device_distance
    2
    ;; float32 _quatx
    4
    ;; float32 _quaty
    4
    ;; float32 _quatz
    4
    ;; float32 _quatw
    4
    ;; float32 _accelx
    4
    ;; float32 _accely
    4
    ;; float32 _accelz
    4
    ;; int8 _device_switch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _device_distance
       (write-word _device_distance s)
     ;; float32 _quatx
       (sys::poke _quatx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _quaty
       (sys::poke _quaty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _quatz
       (sys::poke _quatz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _quatw
       (sys::poke _quatw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelx
       (sys::poke _accelx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accely
       (sys::poke _accely (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelz
       (sys::poke _accelz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _device_switch
       (write-byte _device_switch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _device_distance
     (setq _device_distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _quatx
     (setq _quatx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _quaty
     (setq _quaty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _quatz
     (setq _quatz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _quatw
     (setq _quatw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelx
     (setq _accelx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accely
     (setq _accely (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelz
     (setq _accelz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _device_switch
     (setq _device_switch (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _device_switch 127) (setq _device_switch (- _device_switch 256)))
   ;;
   self)
  )

(setf (get handheld_device::handheld_device_data :md5sum-) "5f3fc4e797e13ce34dcd40452711b663")
(setf (get handheld_device::handheld_device_data :datatype-) "handheld_device/handheld_device_data")
(setf (get handheld_device::handheld_device_data :definition-)
      "int16 device_distance
float32 quatx
float32 quaty
float32 quatz
float32 quatw
float32 accelx
float32 accely
float32 accelz
int8 device_switch
")



(provide :handheld_device/handheld_device_data "5f3fc4e797e13ce34dcd40452711b663")


