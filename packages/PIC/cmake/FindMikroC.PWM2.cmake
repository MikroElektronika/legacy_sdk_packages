if (${MCU_NAME} MATCHES "^PIC18LF8520$|^PIC18LF8622$|^PIC18LF6723$|^PIC18LF6527$|^PIC18LF6622$|^PIC18LF8410$|^PIC18LF6520$|^PIC18LF6628$|^PIC18LF8628$|^PIC18LF8723$|^PIC18LF6310$|^PIC18LF8627$|^PIC18LF8722$|^PIC18LF6627$|^PIC18LF6722$|^PIC18LF8310$|^PIC18LF8720$|^PIC18LF6410$|^PIC18LF8527$")


    if (NOT TARGET MikroC.PWM2 )
        add_library(__Lib_PWM_g0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_g0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_g0/__Lib_PWM_g0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_g0")

    set(MikroC.PWM2_DEFINITIONS )


    if (NOT TARGET MikroC.PWM2 )
        add_library(MikroC.PWM2 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM2 INTERFACE __Lib_PWM_g0)
    set(MikroC.PWM2_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_g0/__Lib_PWM_g0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM2  DEFAULT_MSG
                                    MikroC.PWM2_LIBRARIES)


    set(MikroC.PWM2_INCLUDE_DIRS ${MikroC.PWM2_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM2_LIBRARIES})
    
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

