if (${MCU_NAME} MATCHES "^STM32F107VC$|^STM32F107VB$|^STM32F107RC$|^STM32F107RB$")


    if (NOT TARGET MikroC.Ethernet )
        add_library(__Lib_Ethernet_Intern_107 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Ethernet_Intern_107 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_Ethernet_Intern_107/__Lib_Ethernet_Intern_107.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_Ethernet_Intern_107")

    set(MikroC.Ethernet_DEFINITIONS )


    if (NOT TARGET MikroC.Ethernet )
        add_library(MikroC.Ethernet INTERFACE)
    endif()

    target_link_libraries(MikroC.Ethernet INTERFACE __Lib_Ethernet_Intern_107)
    set(MikroC.Ethernet_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_Ethernet_Intern_107/__Lib_Ethernet_Intern_107.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Ethernet  DEFAULT_MSG
                                    MikroC.Ethernet_LIBRARIES)


    set(MikroC.Ethernet_INCLUDE_DIRS ${MikroC.Ethernet_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Ethernet_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^TM4C1294KCPDT$|^TM4C129XKCZAD$|^TM4C1294NCPDT$|^TM4C1294NCZAD$|^TM4C129ENCZAD$|^TM4C129LNCZAD$|^TM4C129XNCZAD$|^TM4C129ENCPDT$|^TM4C1299NCZAD$|^TM4C129EKCPDT$|^TM4C1299KCZAD$")


    if (NOT TARGET MikroC.Ethernet )
        add_library(__Lib_Ethernet_Intern_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Ethernet_Intern_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_Ethernet_Intern_1/__Lib_Ethernet_Intern_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_Ethernet_Intern_1")

    set(MikroC.Ethernet_DEFINITIONS )


    if (NOT TARGET MikroC.Ethernet )
        add_library(MikroC.Ethernet INTERFACE)
    endif()

    target_link_libraries(MikroC.Ethernet INTERFACE __Lib_Ethernet_Intern_1)
    set(MikroC.Ethernet_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_Ethernet_Intern_1/__Lib_Ethernet_Intern_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Ethernet  DEFAULT_MSG
                                    MikroC.Ethernet_LIBRARIES)


    set(MikroC.Ethernet_INCLUDE_DIRS ${MikroC.Ethernet_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Ethernet_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK64FN1M0.+12$|^MK64FX512.+12$|^MK66FN2M0.+18$|^MK66FX1M0.+18$|^MK65FN2M0.+18$|^MK65FX1M0.+18$")


    if (NOT TARGET MikroC.Ethernet )
        add_library(__Lib_Ethernet UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Ethernet PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_Ethernet/__Lib_Ethernet.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_Ethernet")

    set(MikroC.Ethernet_DEFINITIONS )


    if (NOT TARGET MikroC.Ethernet )
        add_library(MikroC.Ethernet INTERFACE)
    endif()

    target_link_libraries(MikroC.Ethernet INTERFACE __Lib_Ethernet)
    set(MikroC.Ethernet_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_Ethernet/__Lib_Ethernet.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Ethernet  DEFAULT_MSG
                                    MikroC.Ethernet_LIBRARIES)


    set(MikroC.Ethernet_INCLUDE_DIRS ${MikroC.Ethernet_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Ethernet_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MKV58F1M0.+24$|^MKV58F512.+24$")


    if (NOT TARGET MikroC.Ethernet )
        add_library(__Lib_Ethernet UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Ethernet PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_Ethernet/__Lib_Ethernet.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_Ethernet")

    set(MikroC.Ethernet_DEFINITIONS )


    if (NOT TARGET MikroC.Ethernet )
        add_library(MikroC.Ethernet INTERFACE)
    endif()

    target_link_libraries(MikroC.Ethernet INTERFACE __Lib_Ethernet)
    set(MikroC.Ethernet_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_Ethernet/__Lib_Ethernet.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Ethernet  DEFAULT_MSG
                                    MikroC.Ethernet_LIBRARIES)


    set(MikroC.Ethernet_INCLUDE_DIRS ${MikroC.Ethernet_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Ethernet_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK53DN512.+10$|^MK60DN256.+10$|^MK60DN512.+10$|^MK60DX256.+10$|^MK53DX256.+10$")


    if (NOT TARGET MikroC.Ethernet )
        add_library(__Lib_Ethernet UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Ethernet PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_Ethernet/__Lib_Ethernet.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_Ethernet")

    set(MikroC.Ethernet_DEFINITIONS )


    if (NOT TARGET MikroC.Ethernet )
        add_library(MikroC.Ethernet INTERFACE)
    endif()

    target_link_libraries(MikroC.Ethernet INTERFACE __Lib_Ethernet)
    set(MikroC.Ethernet_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_Ethernet/__Lib_Ethernet.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Ethernet  DEFAULT_MSG
                                    MikroC.Ethernet_LIBRARIES)


    set(MikroC.Ethernet_INCLUDE_DIRS ${MikroC.Ethernet_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Ethernet_LIBRARIES})
    
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

