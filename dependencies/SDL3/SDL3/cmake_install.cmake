# Install script for directory: /Users/romanmanandhar/Downloads/SDL-release-3.2.22

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/sdl3.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/libSDL3.0.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL3.0.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL3.0.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL3.0.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/libSDL3.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/libSDL3_test.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL3_test.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL3_test.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL3_test.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake"
         "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3headersTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3headersTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3sharedTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3sharedTargets.cmake"
         "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3sharedTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3sharedTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3sharedTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3sharedTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3sharedTargets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake"
         "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/SDL3Config.cmake"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/SDL3ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL3" TYPE FILE FILES
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_assert.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_asyncio.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_atomic.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_audio.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_begin_code.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_bits.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_blendmode.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_camera.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_clipboard.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_close_code.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_copying.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_cpuinfo.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_dialog.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_egl.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_endian.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_error.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_events.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_filesystem.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_gamepad.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_gpu.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_guid.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_haptic.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_hidapi.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_hints.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_init.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_intrin.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_iostream.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_joystick.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_keyboard.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_keycode.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_loadso.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_locale.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_log.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_main.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_main_impl.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_messagebox.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_metal.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_misc.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_mouse.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_mutex.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_oldnames.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_opengl.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_opengl_glext.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_opengles.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_opengles2.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_opengles2_gl2.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_opengles2_gl2ext.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_opengles2_gl2platform.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_opengles2_khrplatform.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_pen.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_pixels.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_platform.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_platform_defines.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_power.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_process.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_properties.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_rect.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_render.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_scancode.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_sensor.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_stdinc.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_storage.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_surface.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_system.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_thread.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_time.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_timer.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_touch.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_tray.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_version.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_video.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_vulkan.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/include-revision/SDL3/SDL_revision.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL3" TYPE FILE FILES
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_assert.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_common.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_compare.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_crc32.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_font.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_fuzzer.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_harness.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_log.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_md5.h"
    "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/include/SDL3/SDL_test_memory.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL3" TYPE FILE FILES "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/LICENSE.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/romanmanandhar/Downloads/SDL-release-3.2.22/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
