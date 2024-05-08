if (${MCU_NAME} MATCHES "^PIC32MX775F256L$|^PIC32MX795F512L$|^PIC32MX775F512L$|^PIC32MX775F256H$|^PIC32MX775F512H$|^PIC32MX795F512H$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_CAN_12/__Lib_CAN_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_CAN_12")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_12)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_CAN_12/__Lib_CAN_12.emcl\"")


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

if (${MCU_NAME} MATCHES "^PIC32MX575F256H$|^PIC32MX534F064L$|^PIC32MX764F128H$|^PIC32MX564F128L$|^PIC32MX575F512H$|^PIC32MX534F064H$|^PIC32MX564F128H$|^PIC32MX530F128H$|^PIC32MX564F064H$|^PIC32MX550F256L$|^PIC32MX575F512L$|^PIC32MX550F256H$|^PIC32MX564F064L$|^PIC32MX575F256L$|^PIC32MX570F512L$|^PIC32MX570F512H$|^PIC32MX530F128L$|^PIC32MX764F128L$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_CAN_1/__Lib_CAN_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_CAN_1")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_1)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_CAN_1/__Lib_CAN_1.emcl\"")


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

if (${MCU_NAME} MATCHES "^PIC32MZ1024ECH100$|^PIC32MZ1024ECH064$|^PIC32MZ2048ECH124$|^PIC32MZ1024ECM064$|^PIC32MZ1024ECM144$|^PIC32MZ1024ECH124$|^PIC32MZ1024ECM100$|^PIC32MZ2048ECH100$|^PIC32MZ2048ECM144$|^PIC32MZ2048ECH144$|^PIC32MZ2048ECH064$|^PIC32MZ2048ECM124$|^PIC32MZ1024ECM124$|^PIC32MZ2048ECM064$|^PIC32MZ1024ECH144$|^PIC32MZ2048ECM100$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_CAN_12/__Lib_CAN_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_CAN_12")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_12)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_CAN_12/__Lib_CAN_12.emcl\"")


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

if (${MCU_NAME} MATCHES "^PIC32MZ2048EFM100$|^PIC32MZ1024EFF124$|^PIC32MZ0512EFK124$|^PIC32MZ2048EFH064$|^PIC32MZ0512EFF144$|^PIC32MZ0512EFK144$|^PIC32MZ1024EFK064$|^PIC32MZ0512EFF124$|^PIC32MZ1024EFF144$|^PIC32MZ2048EFH124$|^PIC32MZ1024EFH100$|^PIC32MZ2048EFH144$|^PIC32MZ2048EFM144$|^PIC32MZ1024EFF064$|^PIC32MZ1024EFM124$|^PIC32MZ1024EFH144$|^PIC32MZ1024EFK124$|^PIC32MZ0512EFK064$|^PIC32MZ1024EFK144$|^PIC32MZ2048EFM064$|^PIC32MZ2048EFH100$|^PIC32MZ1024EFF100$|^PIC32MZ2048EFM124$|^PIC32MZ0512EFK100$|^PIC32MZ0512EFF100$|^PIC32MZ1024EFK100$|^PIC32MZ1024EFH064$|^PIC32MZ1024EFH124$|^PIC32MZ1024EFM144$|^PIC32MZ0512EFF064$|^PIC32MZ1024EFM064$|^PIC32MZ1024EFM100$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_CAN_12/__Lib_CAN_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_CAN_12")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_12)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_CAN_12/__Lib_CAN_12.emcl\"")


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

