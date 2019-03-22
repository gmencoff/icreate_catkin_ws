# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "handheld_device: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ihandheld_device:/home/georgemencoff/catkin_ws/src/handheld_device/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(handheld_device_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg" NAME_WE)
add_custom_target(_handheld_device_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "handheld_device" "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Accel"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(handheld_device
  "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handheld_device
)

### Generating Services

### Generating Module File
_generate_module_cpp(handheld_device
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handheld_device
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(handheld_device_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(handheld_device_generate_messages handheld_device_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg" NAME_WE)
add_dependencies(handheld_device_generate_messages_cpp _handheld_device_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(handheld_device_gencpp)
add_dependencies(handheld_device_gencpp handheld_device_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS handheld_device_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(handheld_device
  "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/handheld_device
)

### Generating Services

### Generating Module File
_generate_module_eus(handheld_device
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/handheld_device
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(handheld_device_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(handheld_device_generate_messages handheld_device_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg" NAME_WE)
add_dependencies(handheld_device_generate_messages_eus _handheld_device_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(handheld_device_geneus)
add_dependencies(handheld_device_geneus handheld_device_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS handheld_device_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(handheld_device
  "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handheld_device
)

### Generating Services

### Generating Module File
_generate_module_lisp(handheld_device
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handheld_device
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(handheld_device_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(handheld_device_generate_messages handheld_device_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg" NAME_WE)
add_dependencies(handheld_device_generate_messages_lisp _handheld_device_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(handheld_device_genlisp)
add_dependencies(handheld_device_genlisp handheld_device_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS handheld_device_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(handheld_device
  "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/handheld_device
)

### Generating Services

### Generating Module File
_generate_module_nodejs(handheld_device
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/handheld_device
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(handheld_device_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(handheld_device_generate_messages handheld_device_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg" NAME_WE)
add_dependencies(handheld_device_generate_messages_nodejs _handheld_device_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(handheld_device_gennodejs)
add_dependencies(handheld_device_gennodejs handheld_device_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS handheld_device_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(handheld_device
  "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handheld_device
)

### Generating Services

### Generating Module File
_generate_module_py(handheld_device
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handheld_device
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(handheld_device_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(handheld_device_generate_messages handheld_device_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/georgemencoff/catkin_ws/src/handheld_device/msg/handheld_device_data.msg" NAME_WE)
add_dependencies(handheld_device_generate_messages_py _handheld_device_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(handheld_device_genpy)
add_dependencies(handheld_device_genpy handheld_device_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS handheld_device_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handheld_device)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handheld_device
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(handheld_device_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(handheld_device_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/handheld_device)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/handheld_device
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(handheld_device_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(handheld_device_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handheld_device)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handheld_device
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(handheld_device_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(handheld_device_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/handheld_device)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/handheld_device
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(handheld_device_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(handheld_device_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handheld_device)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handheld_device\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handheld_device
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(handheld_device_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(handheld_device_generate_messages_py geometry_msgs_generate_messages_py)
endif()
