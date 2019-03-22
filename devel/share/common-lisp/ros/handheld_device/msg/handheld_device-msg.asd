
(cl:in-package :asdf)

(defsystem "handheld_device-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "handheld_device_data" :depends-on ("_package_handheld_device_data"))
    (:file "_package_handheld_device_data" :depends-on ("_package"))
  ))