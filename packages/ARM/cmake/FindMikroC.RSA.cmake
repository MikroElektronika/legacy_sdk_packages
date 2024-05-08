if (${MCU_NAME} MATCHES "^CEC1702$")


    if (NOT TARGET MikroC.RSA )
        add_library(__Lib_RSA_1702 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_RSA_1702 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_RSA_1702/__Lib_RSA_1702.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_RSA_1702")

    set(MikroC.RSA_DEFINITIONS )


    if (NOT TARGET MikroC.RSA )
        add_library(MikroC.RSA INTERFACE)
    endif()

    target_link_libraries(MikroC.RSA INTERFACE __Lib_RSA_1702)
    set(MikroC.RSA_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_RSA_1702/__Lib_RSA_1702.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.RSA  DEFAULT_MSG
                                    MikroC.RSA_LIBRARIES)


    set(MikroC.RSA_INCLUDE_DIRS ${MikroC.RSA_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.RSA_LIBRARIES})
    
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


    if (NOT TARGET MikroC.RSA )
        add_library(__Lib_RSA UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_RSA PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_RSA/__Lib_RSA.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_RSA")

    set(MikroC.RSA_DEFINITIONS )


    if (NOT TARGET MikroC.RSA )
        add_library(MikroC.RSA INTERFACE)
    endif()

    target_link_libraries(MikroC.RSA INTERFACE __Lib_RSA)
    set(MikroC.RSA_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_RSA/__Lib_RSA.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.RSA  DEFAULT_MSG
                                    MikroC.RSA_LIBRARIES)


    set(MikroC.RSA_INCLUDE_DIRS ${MikroC.RSA_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.RSA_LIBRARIES})
    
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

