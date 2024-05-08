if (${MCU_NAME} MATCHES "^CEC1702$")


    if (NOT TARGET MikroC.PKE )
        add_library(__Lib_PKE_1702 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PKE_1702 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_PKE_1702/__Lib_PKE_1702.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_PKE_1702")

    set(MikroC.PKE_DEFINITIONS )


    if (NOT TARGET MikroC.PKE )
        add_library(MikroC.PKE INTERFACE)
    endif()

    target_link_libraries(MikroC.PKE INTERFACE __Lib_PKE_1702)
    set(MikroC.PKE_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_PKE_1702/__Lib_PKE_1702.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PKE  DEFAULT_MSG
                                    MikroC.PKE_LIBRARIES)


    set(MikroC.PKE_INCLUDE_DIRS ${MikroC.PKE_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PKE_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^CEC1302$")


    if (NOT TARGET MikroC.PKE )
        add_library(__Lib_PKE UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PKE PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_PKE/__Lib_PKE.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_PKE")

    set(MikroC.PKE_DEFINITIONS )


    if (NOT TARGET MikroC.PKE )
        add_library(MikroC.PKE INTERFACE)
    endif()

    target_link_libraries(MikroC.PKE INTERFACE __Lib_PKE)
    set(MikroC.PKE_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_PKE/__Lib_PKE.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PKE  DEFAULT_MSG
                                    MikroC.PKE_LIBRARIES)


    set(MikroC.PKE_INCLUDE_DIRS ${MikroC.PKE_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PKE_LIBRARIES})
    
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

