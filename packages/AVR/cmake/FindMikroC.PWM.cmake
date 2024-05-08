if (${MCU_NAME} MATCHES "^ATXMEGA128B3$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xB3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xB3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xB3/__Lib_PWM_xB3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xB3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xB3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xB3/__Lib_PWM_xB3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA128A4U$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xA4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xA4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA4/__Lib_PWM_xA4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA4")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xA4)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA4/__Lib_PWM_xA4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA128A1$|^ATXMEGA128A1U$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xA1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xA1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA1/__Lib_PWM_xA1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA1")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xA1)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA1/__Lib_PWM_xA1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA192C3$|^ATXMEGA384C3$|^ATXMEGA128C3$|^ATXMEGA256C3$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xC3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xC3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xC3/__Lib_PWM_xC3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xC3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xC3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xC3/__Lib_PWM_xC3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA192A3U$|^ATXMEGA256A3BU$|^ATXMEGA256A3U$|^ATXMEGA256A3B$|^ATXMEGA128A3U$|^ATXMEGA128A3$|^ATXMEGA192A3$|^ATXMEGA256A3$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xA3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xA3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA3/__Lib_PWM_xA3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xA3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xA3/__Lib_PWM_xA3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA128D4$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xD4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xD4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xD4/__Lib_PWM_xD4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xD4")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xD4)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xD4/__Lib_PWM_xD4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA128B1$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xB1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xB1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xB1/__Lib_PWM_xB1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xB1")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xB1)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xB1/__Lib_PWM_xB1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA256D3$|^ATXMEGA384D3$|^ATXMEGA128D3$|^ATXMEGA192D3$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xD3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xD3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xD3/__Lib_PWM_xD3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xD3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xD3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_xD3/__Lib_PWM_xD3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA8E5$|^ATXMEGA32E5$|^ATXMEGA16E5$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xE5 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xE5 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xE5/__Lib_PWM_xE5.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xE5")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xE5)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xE5/__Lib_PWM_xE5.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA64B3$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xB3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xB3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xB3/__Lib_PWM_xB3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xB3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xB3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xB3/__Lib_PWM_xB3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA16A4U$|^ATXMEGA32A4$|^ATXMEGA16A4$|^ATXMEGA32A4U$|^ATXMEGA64A4U$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xA4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xA4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA4/__Lib_PWM_xA4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA4")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xA4)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA4/__Lib_PWM_xA4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA16C4$|^ATXMEGA32C4$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xC4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xC4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xC4/__Lib_PWM_xC4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xC4")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xC4)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xC4/__Lib_PWM_xC4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA64A1$|^ATXMEGA64A1U$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xA1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xA1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA1/__Lib_PWM_xA1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA1")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xA1)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA1/__Lib_PWM_xA1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA64C3$|^ATXMEGA32C3$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xC3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xC3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xC3/__Lib_PWM_xC3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xC3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xC3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xC3/__Lib_PWM_xC3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^AT90PWM316$|^ATTINY13$|^ATTINY84A$|^ATTINY24$|^ATTINY45$|^AT90USB82$|^ATTINY44A$|^ATTINY828$|^AT90PWM3B$|^ATTINY2313A$|^ATTINY1634$|^AT90PWM3$|^AT90USB162$|^AT90PWM2$|^ATMEGA32U2$|^ATTINY25$|^ATMEGA16U2$|^ATTINY43U$|^AT90PWM2B$|^ATMEGA16U4$|^ATTINY24A$|^ATTINY85$|^ATMEGA8U2$|^AT90PWM216$|^AT90PWM1$|^ATTINY4313$|^ATMEGA32U4$|^ATTINY2313$|^ATTINY84$|^ATTINY44$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_AB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_AB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB/__Lib_PWM_AB.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_AB)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB/__Lib_PWM_AB.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA64A3$|^ATXMEGA64A3U$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xA3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xA3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA3/__Lib_PWM_xA3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xA3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xA3/__Lib_PWM_xA3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA16D4$|^ATXMEGA32D4$|^ATXMEGA64D4$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xD4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xD4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xD4/__Lib_PWM_xD4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xD4")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xD4)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xD4/__Lib_PWM_xD4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATTINY13A$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_A/__Lib_PWM_A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_A")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_A)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_A/__Lib_PWM_A.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA64B1$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xB1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xB1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xB1/__Lib_PWM_xB1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xB1")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xB1)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xB1/__Lib_PWM_xB1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATMEGA8515$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0/__Lib_PWM_0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_0)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0/__Lib_PWM_0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATMEGA8A$|^ATMEGA8$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM1_2_presc UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM1_2_presc PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM1_2_presc/__Lib_PWM1_2_presc.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM1_2_presc")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM1_2_presc)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM1_2_presc/__Lib_PWM1_2_presc.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATTINY841$|^ATTINY441$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_AB_MUX UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_AB_MUX PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB_MUX/__Lib_PWM_AB_MUX.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB_MUX")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_AB_MUX)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB_MUX/__Lib_PWM_AB_MUX.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATXMEGA64D3$|^ATXMEGA32D3$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_xD3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_xD3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xD3/__Lib_PWM_xD3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xD3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_xD3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_xD3/__Lib_PWM_xD3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

