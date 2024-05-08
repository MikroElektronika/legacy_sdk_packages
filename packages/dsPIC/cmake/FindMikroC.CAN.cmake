if (${MCU_NAME} MATCHES "^dsPIC30F6014A$|^dsPIC30F5011$|^dsPIC30F6010A$|^dsPIC30F6013$|^dsPIC30F6013A$|^dsPIC30F6012$|^dsPIC30F5013E$|^dsPIC30F6012A$|^dsPIC30F5011E$|^dsPIC30F6011$|^dsPIC30F5013$|^dsPIC30F6010$|^dsPIC30F6011A$|^dsPIC30F6014$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_CAN_12/__Lib_CAN_12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_CAN_12")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_12)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_CAN_12/__Lib_CAN_12.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC30F5015$|^dsPIC30F5016$|^dsPIC30F5015E$|^dsPIC30F4011E$|^dsPIC30F4012E$|^dsPIC30F6015$|^dsPIC30F4012$|^dsPIC30F4013E$|^dsPIC30F4013$|^dsPIC30F4011$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_CAN_1/__Lib_CAN_1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_CAN_1")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_1)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_CAN_1/__Lib_CAN_1.mcl\"")


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
