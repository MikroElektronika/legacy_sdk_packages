if (${MCU_NAME} MATCHES "^PIC18F26K83$|^PIC18F25K83$")


    if (NOT TARGET MikroC.CAN_Remappable )
        add_library(__Lib_CAN_Remappable UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_Remappable PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_CAN_Remappable/__Lib_CAN_Remappable.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_CAN_Remappable")

    set(MikroC.CAN_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.CAN_Remappable )
        add_library(MikroC.CAN_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN_Remappable INTERFACE __Lib_CAN_Remappable)
    set(MikroC.CAN_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_CAN_Remappable/__Lib_CAN_Remappable.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN_Remappable  DEFAULT_MSG
                                    MikroC.CAN_Remappable_LIBRARIES)


    set(MikroC.CAN_Remappable_INCLUDE_DIRS ${MikroC.CAN_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_Remappable_LIBRARIES})
    
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

