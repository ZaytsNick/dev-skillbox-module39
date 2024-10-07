# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appTask_1_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appTask_1_autogen.dir\\ParseCache.txt"
  "appTask_1_autogen"
  )
endif()
