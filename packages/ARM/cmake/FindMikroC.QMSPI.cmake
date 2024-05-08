if (${MCU_NAME} MATCHES "^CEC1702$")


    if (NOT TARGET MikroC.QMSPI )
        add_library(__Lib_QMSPI UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_QMSPI PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_QMSPI/__Lib_QMSPI.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_QMSPI")

    set(MikroC.QMSPI_DEFINITIONS )


    if (NOT TARGET MikroC.QMSPI )
        add_library(MikroC.QMSPI INTERFACE)
    endif()

    target_link_libraries(MikroC.QMSPI INTERFACE __Lib_QMSPI)
    set(MikroC.QMSPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_QMSPI/__Lib_QMSPI.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.QMSPI  DEFAULT_MSG
                                    MikroC.QMSPI_LIBRARIES)


    set(MikroC.QMSPI_INCLUDE_DIRS ${MikroC.QMSPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.QMSPI_LIBRARIES})
    
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

