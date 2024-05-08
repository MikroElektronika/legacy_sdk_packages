if (${MCU_NAME} MATCHES "^ATMEGA32M1$|^ATMEGA64M1$|^ATMEGA16M1$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_M1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_M1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_CAN_M1/__Lib_CAN_M1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_CAN_M1")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_M1)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_CAN_M1/__Lib_CAN_M1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90CAN64$|^AT90CAN128$|^AT90CAN32$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_CAN/__Lib_CAN.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_CAN")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_CAN/__Lib_CAN.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

