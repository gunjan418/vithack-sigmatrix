# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hlpr_speech_msgs: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ihlpr_speech_msgs:/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hlpr_speech_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg" NAME_WE)
add_custom_target(_hlpr_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_speech_msgs" "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg" ""
)

get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg" NAME_WE)
add_custom_target(_hlpr_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_speech_msgs" "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg" "hlpr_speech_msgs/StampedString"
)

get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv" NAME_WE)
add_custom_target(_hlpr_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_speech_msgs" "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_speech_msgs
)
_generate_msg_cpp(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Services
_generate_srv_cpp(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Module File
_generate_module_cpp(hlpr_speech_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_speech_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hlpr_speech_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hlpr_speech_msgs_generate_messages hlpr_speech_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_cpp _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_cpp _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_cpp _hlpr_speech_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_speech_msgs_gencpp)
add_dependencies(hlpr_speech_msgs_gencpp hlpr_speech_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_speech_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_speech_msgs
)
_generate_msg_eus(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Services
_generate_srv_eus(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Module File
_generate_module_eus(hlpr_speech_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_speech_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hlpr_speech_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hlpr_speech_msgs_generate_messages hlpr_speech_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_eus _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_eus _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_eus _hlpr_speech_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_speech_msgs_geneus)
add_dependencies(hlpr_speech_msgs_geneus hlpr_speech_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_speech_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_speech_msgs
)
_generate_msg_lisp(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Services
_generate_srv_lisp(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Module File
_generate_module_lisp(hlpr_speech_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_speech_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hlpr_speech_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hlpr_speech_msgs_generate_messages hlpr_speech_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_lisp _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_lisp _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_lisp _hlpr_speech_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_speech_msgs_genlisp)
add_dependencies(hlpr_speech_msgs_genlisp hlpr_speech_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_speech_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hlpr_speech_msgs
)
_generate_msg_nodejs(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Services
_generate_srv_nodejs(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Module File
_generate_module_nodejs(hlpr_speech_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hlpr_speech_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hlpr_speech_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hlpr_speech_msgs_generate_messages hlpr_speech_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_nodejs _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_nodejs _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_nodejs _hlpr_speech_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_speech_msgs_gennodejs)
add_dependencies(hlpr_speech_msgs_gennodejs hlpr_speech_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_speech_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_speech_msgs
)
_generate_msg_py(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Services
_generate_srv_py(hlpr_speech_msgs
  "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_speech_msgs
)

### Generating Module File
_generate_module_py(hlpr_speech_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_speech_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hlpr_speech_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hlpr_speech_msgs_generate_messages hlpr_speech_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_py _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_py _hlpr_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv" NAME_WE)
add_dependencies(hlpr_speech_msgs_generate_messages_py _hlpr_speech_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_speech_msgs_genpy)
add_dependencies(hlpr_speech_msgs_genpy hlpr_speech_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_speech_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_speech_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_speech_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hlpr_speech_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_speech_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_speech_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hlpr_speech_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_speech_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_speech_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hlpr_speech_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hlpr_speech_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hlpr_speech_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hlpr_speech_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_speech_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_speech_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_speech_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hlpr_speech_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
