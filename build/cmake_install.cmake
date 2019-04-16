# Install script for directory: /usr/src/uws

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/src/uws/build/uws")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/usr/src/uws/build/libuws.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/usr/src/uws/src/App.h"
    "/usr/src/uws/src/AsyncSocket.h"
    "/usr/src/uws/src/AsyncSocketData.h"
    "/usr/src/uws/src/HttpContext.h"
    "/usr/src/uws/src/HttpContextData.h"
    "/usr/src/uws/src/HttpParser.h"
    "/usr/src/uws/src/HttpResponse.h"
    "/usr/src/uws/src/HttpResponseData.h"
    "/usr/src/uws/src/HttpRouter.h"
    "/usr/src/uws/src/Loop.h"
    "/usr/src/uws/src/LoopData.h"
    "/usr/src/uws/src/PerMessageDeflate.h"
    "/usr/src/uws/src/TopicTree.h"
    "/usr/src/uws/src/Utilities.h"
    "/usr/src/uws/src/WebSocket.h"
    "/usr/src/uws/src/WebSocketContext.h"
    "/usr/src/uws/src/WebSocketContextData.h"
    "/usr/src/uws/src/WebSocketData.h"
    "/usr/src/uws/src/WebSocketExtensions.h"
    "/usr/src/uws/src/WebSocketProtocol.h"
    "/usr/src/uws/src/libwshandshake.hpp"
    "/usr/src/uws/src/f2/function2.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/usr/src/uws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
