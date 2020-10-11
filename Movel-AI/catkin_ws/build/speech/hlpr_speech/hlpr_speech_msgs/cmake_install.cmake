# Install script for directory: /home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_speech_msgs/msg" TYPE FILE FILES
    "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/StampedString.msg"
    "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/msg/SpeechCommand.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_speech_msgs/srv" TYPE FILE FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/srv/SpeechService.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_speech_msgs/cmake" TYPE FILE FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/build/speech/hlpr_speech/hlpr_speech_msgs/catkin_generated/installspace/hlpr_speech_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/devel/include/hlpr_speech_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/devel/share/roseus/ros/hlpr_speech_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/devel/share/common-lisp/ros/hlpr_speech_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/devel/share/gennodejs/ros/hlpr_speech_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/devel/lib/python3/dist-packages/hlpr_speech_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/devel/lib/python3/dist-packages/hlpr_speech_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/build/speech/hlpr_speech/hlpr_speech_msgs/catkin_generated/installspace/hlpr_speech_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_speech_msgs/cmake" TYPE FILE FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/build/speech/hlpr_speech/hlpr_speech_msgs/catkin_generated/installspace/hlpr_speech_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_speech_msgs/cmake" TYPE FILE FILES
    "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/build/speech/hlpr_speech/hlpr_speech_msgs/catkin_generated/installspace/hlpr_speech_msgsConfig.cmake"
    "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/build/speech/hlpr_speech/hlpr_speech_msgs/catkin_generated/installspace/hlpr_speech_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_speech_msgs" TYPE FILE FILES "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_msgs/package.xml")
endif()

