if (${MCU_NAME} MATCHES "^PIC18F66J16$|^PIC18F8527$|^PIC18F8410$|^PIC18F46K22$|^PIC18F97J60$|^PIC18F6410$|^PIC18F23K22$|^PIC18F67J11$|^PIC18F6525$|^PIC18F45K22$|^PIC18F6620$|^PIC18F87J11$|^PIC18F65J10$|^PIC18F6723$|^PIC18F87J50$|^PIC18F66J65$|^PIC18F86J60$|^PIC18F6310$|^PIC18F86J10$|^PIC18F8723$|^PIC18F66J15$|^PIC18F65J15$|^PIC18F85J15$|^PIC18F86J16$|^PIC18LF23K22$|^PIC18F87J60$|^PIC18F66J55$|^PIC18LF45K22$|^PIC18F26K22$|^PIC18F86J65$|^PIC18LF24K22$|^PIC18F86J15$|^PIC18F44K22$|^PIC18F8722$|^PIC18F8620$|^PIC18F85J50$|^PIC18F43K22$|^PIC18LF46K22$|^PIC18F6627$|^PIC18F67J50$|^PIC18F8628$|^PIC18F86J50$|^PIC18F6520$|^PIC18F8310$|^PIC18F67J10$|^PIC18F66J10$|^PIC18F86J55$|^PIC18F8525$|^PIC18F6720$|^PIC18F66J60$|^PIC18F87J10$|^PIC18F86J11$|^PIC18LF26K22$|^PIC18F96J60$|^PIC18F8621$|^PIC18LF43K22$|^PIC18F24K22$|^PIC18F6622$|^PIC18F67J60$|^PIC18F96J65$|^PIC18F65J50$|^PIC18F6621$|^PIC18F8720$|^PIC18F66J11$|^PIC18F25K22$|^PIC18F6628$|^PIC18F85J10$|^PIC18F8627$|^PIC18F6527$|^PIC18F6722$|^PIC18F8622$|^PIC18F8520$|^PIC18LF44K22$|^PIC18F66J50$|^PIC18LF25K22$")


    if (NOT TARGET MikroC.PWM12 )
        add_library(__Lib_PWM_c21 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c21/__Lib_PWM_c21.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c21")

    set(MikroC.PWM12_DEFINITIONS )


    if (NOT TARGET MikroC.PWM12 )
        add_library(MikroC.PWM12 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM12 INTERFACE __Lib_PWM_c21)
    set(MikroC.PWM12_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c21/__Lib_PWM_c21.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM12  DEFAULT_MSG
                                    MikroC.PWM12_LIBRARIES)


    set(MikroC.PWM12_INCLUDE_DIRS ${MikroC.PWM12_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM12_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F737$|^PIC16F747$|^PIC16F777$|^PIC16F767$")


    if (NOT TARGET MikroC.PWM12 )
        add_library(__Lib_PWM_c21 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c21/__Lib_PWM_c21.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c21")

    set(MikroC.PWM12_DEFINITIONS )


    if (NOT TARGET MikroC.PWM12 )
        add_library(MikroC.PWM12 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM12 INTERFACE __Lib_PWM_c21)
    set(MikroC.PWM12_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c21/__Lib_PWM_c21.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM12  DEFAULT_MSG
                                    MikroC.PWM12_LIBRARIES)


    set(MikroC.PWM12_INCLUDE_DIRS ${MikroC.PWM12_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM12_LIBRARIES})
    
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

