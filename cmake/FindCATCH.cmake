
# CATCH_FOUND
# CATCH_INCLUDE_DIR

find_path(CATCH_INCLUDE_DIR catch.hpp
    $ENV{CATCHDIR}/include
    $ENV{CATCH_HOME}/include
    $ENV{PROGRAMFILES}/CATCH/include
    /usr/include
    /usr/local/include
    /sw/include
    /opt/local/include
    DOC "The directory where catch.hpp resides")

find_library(CATCH_LIBRARY
    NAMES catch
    PATHS
    $ENV{CATCHDIR}/lib
    $ENV{CATCHDIR}/lib/.libs
    $ENV{CATCH_HOME}/lib
    $ENV{CATCH_HOME}/lib/.libs
    $ENV{CATCHDIR}
    $ENV{CATCH_HOME}
    $ENV{CATCHDIR}/Release
    $ENV{CATCH_HOME}/Release
    /usr/lib64
    /usr/local/lib64
    /sw/lib64
    /opt/local/lib64
    /usr/lib
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The CATCH library")

find_library(CATCH_LIBRARY_DEBUG
    NAMES catchd
    PATHS
    $ENV{CATCHDIR}/lib
    $ENV{CATCHDIR}/lib/.libs
    $ENV{CATCH_HOME}/lib
    $ENV{CATCH_HOME}/lib/.libs
    $ENV{CATCHDIR}
    $ENV{CATCH_HOME}
    $ENV{CATCHDIR}/Debug
    $ENV{CATCH_HOME}/Debug
    /usr/lib64
    /usr/local/lib64
    /sw/lib64
    /opt/local/lib64
    /usr/lib
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The CATCH debug library")

# if (CATCH_LIBRARY AND CATCH_LIBRARY_DEBUG)
#     set(CATCH_LIBRARIES "optimized" ${CATCH_LIBRARY} "debug" ${CATCH_LIBRARY_DEBUG})
# elseif (CATCH_LIBRARY)
#     set(CATCH_LIBRARIES ${CATCH_LIBRARY})
# elseif (CATCH_LIBRARY_DEBUG)
#     set(CATCH_LIBRARIES ${CATCH_LIBRARY_DEBUG})
# else ()
#     set(CATCH_LIBRARIES "")
# endif ()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CATCH REQUIRED_VARS CATCH_INCLUDE_DIR)
mark_as_advanced(CATCH_INCLUDE_DIR)
