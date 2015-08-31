# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "grasping_controller: 0 messages, 3 services")

set(MSG_I_FLAGS "-Icontrol_msgs:/opt/ros/hydro/share/control_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/hydro/share/trajectory_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(grasping_controller_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MoveAll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasping_controller
)
_generate_srv_cpp(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MoveIRB120.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasping_controller
)
_generate_srv_cpp(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MakeIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasping_controller
)

### Generating Module File
_generate_module_cpp(grasping_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasping_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(grasping_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(grasping_controller_generate_messages grasping_controller_generate_messages_cpp)

# target for backward compatibility
add_custom_target(grasping_controller_gencpp)
add_dependencies(grasping_controller_gencpp grasping_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasping_controller_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MoveAll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasping_controller
)
_generate_srv_lisp(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MoveIRB120.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasping_controller
)
_generate_srv_lisp(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MakeIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasping_controller
)

### Generating Module File
_generate_module_lisp(grasping_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasping_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(grasping_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(grasping_controller_generate_messages grasping_controller_generate_messages_lisp)

# target for backward compatibility
add_custom_target(grasping_controller_genlisp)
add_dependencies(grasping_controller_genlisp grasping_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasping_controller_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MoveAll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasping_controller
)
_generate_srv_py(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MoveIRB120.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasping_controller
)
_generate_srv_py(grasping_controller
  "/home/yk/catkin_ws/src/grasping_controller/srv/MakeIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasping_controller
)

### Generating Module File
_generate_module_py(grasping_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasping_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(grasping_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(grasping_controller_generate_messages grasping_controller_generate_messages_py)

# target for backward compatibility
add_custom_target(grasping_controller_genpy)
add_dependencies(grasping_controller_genpy grasping_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasping_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasping_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasping_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(grasping_controller_generate_messages_cpp control_msgs_generate_messages_cpp)
add_dependencies(grasping_controller_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(grasping_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(grasping_controller_generate_messages_cpp trajectory_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasping_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasping_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(grasping_controller_generate_messages_lisp control_msgs_generate_messages_lisp)
add_dependencies(grasping_controller_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(grasping_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(grasping_controller_generate_messages_lisp trajectory_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasping_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasping_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasping_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(grasping_controller_generate_messages_py control_msgs_generate_messages_py)
add_dependencies(grasping_controller_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(grasping_controller_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(grasping_controller_generate_messages_py trajectory_msgs_generate_messages_py)
