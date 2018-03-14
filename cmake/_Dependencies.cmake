# cmake/_Dependencies.cmake is generated by `mulle-sde`. Edits will be lost.
#
if( MULLE_TRACE_INCLUDE)
   MESSAGE( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

if( NOT MULLE_BUFFER_LIBRARY)
   find_library( MULLE_BUFFER_LIBRARY NAMES mulle-buffer)
   message( STATUS "MULLE_BUFFER_LIBRARY is ${MULLE_BUFFER_LIBRARY}")
   set( DEPENDENCY_LIBRARIES
      ${MULLE_BUFFER_LIBRARY}
      ${DEPENDENCY_LIBRARIES}
      CACHE INTERNAL "need to cache this"
   )
   if( MULLE_BUFFER_LIBRARY)
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( TMP_MULLE_BUFFER_ROOT "${MULLE_BUFFER_LIBRARY}" DIRECTORY)
      get_filename_component( TMP_MULLE_BUFFER_ROOT "${TMP_MULLE_BUFFER_ROOT}" DIRECTORY)
      set( MEMO_CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}")
      list( INSERT CMAKE_MODULE_PATH 0 "${TMP_MULLE_BUFFER_ROOT}/include/cmake")
      # use explicit path to avoid "surprises"
      unset( MULLE_BUFFER_DEFINITIONS)
      include( "${TMP_MULLE_BUFFER_ROOT}/include/cmake/DependenciesAndLibraries.cmake" OPTIONAL)
      set( CMAKE_MODULE_PATH "${MEMO_CMAKE_MODULE_PATH}")

      set( INHERITED_DEFINITIONS
           ${MULLE_BUFFER_DEFINITIONS}
           ${INHERITED_DEFINITIONS}
      )
  endif()
endif()

if( NOT MULLE_UTF_LIBRARY)
   find_library( MULLE_UTF_LIBRARY NAMES mulle-utf)
   message( STATUS "MULLE_UTF_LIBRARY is ${MULLE_UTF_LIBRARY}")
   set( DEPENDENCY_LIBRARIES
      ${MULLE_UTF_LIBRARY}
      ${DEPENDENCY_LIBRARIES}
      CACHE INTERNAL "need to cache this"
   )
   if( MULLE_UTF_LIBRARY)
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( TMP_MULLE_UTF_ROOT "${MULLE_UTF_LIBRARY}" DIRECTORY)
      get_filename_component( TMP_MULLE_UTF_ROOT "${TMP_MULLE_UTF_ROOT}" DIRECTORY)
      set( MEMO_CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}")
      list( INSERT CMAKE_MODULE_PATH 0 "${TMP_MULLE_UTF_ROOT}/include/cmake")
      # use explicit path to avoid "surprises"
      unset( MULLE_UTF_DEFINITIONS)
      include( "${TMP_MULLE_UTF_ROOT}/include/cmake/DependenciesAndLibraries.cmake" OPTIONAL)
      set( CMAKE_MODULE_PATH "${MEMO_CMAKE_MODULE_PATH}")

      set( INHERITED_DEFINITIONS
           ${MULLE_UTF_DEFINITIONS}
           ${INHERITED_DEFINITIONS}
      )
  endif()
endif()

if( NOT MULLE_VARARG_LIBRARY)
   find_library( MULLE_VARARG_LIBRARY NAMES mulle-vararg)
   message( STATUS "MULLE_VARARG_LIBRARY is ${MULLE_VARARG_LIBRARY}")
   set( DEPENDENCY_LIBRARIES
      ${MULLE_VARARG_LIBRARY}
      ${DEPENDENCY_LIBRARIES}
      CACHE INTERNAL "need to cache this"
   )
   if( MULLE_VARARG_LIBRARY)
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( TMP_MULLE_VARARG_ROOT "${MULLE_VARARG_LIBRARY}" DIRECTORY)
      get_filename_component( TMP_MULLE_VARARG_ROOT "${TMP_MULLE_VARARG_ROOT}" DIRECTORY)
      set( MEMO_CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}")
      list( INSERT CMAKE_MODULE_PATH 0 "${TMP_MULLE_VARARG_ROOT}/include/cmake")
      # use explicit path to avoid "surprises"
      unset( MULLE_VARARG_DEFINITIONS)
      include( "${TMP_MULLE_VARARG_ROOT}/include/cmake/DependenciesAndLibraries.cmake" OPTIONAL)
      set( CMAKE_MODULE_PATH "${MEMO_CMAKE_MODULE_PATH}")

      set( INHERITED_DEFINITIONS
           ${MULLE_VARARG_DEFINITIONS}
           ${INHERITED_DEFINITIONS}
      )
  endif()
endif()