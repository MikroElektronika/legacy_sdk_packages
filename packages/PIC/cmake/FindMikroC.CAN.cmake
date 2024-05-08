if (${MCU_NAME} MATCHES "^PIC18F4580$|^PIC18F2585$|^PIC18F6585$|^PIC18F65K80$|^PIC18F46K80$|^PIC18LF2685$|^PIC18F2685$|^PIC18LF2680$|^PIC18F4682$|^PIC18F258$|^PIC18LF25K80$|^PIC18F2682$|^PIC18F26K80$|^PIC18LF2480$|^PIC18LF4585$|^PIC18LF26K80$|^PIC18LF45K80$|^PIC18LF65K80$|^PIC18LF2580$|^PIC18F4680$|^PIC18LF2585$|^PIC18F45K80$|^PIC18F8680$|^PIC18LF46K80$|^PIC18F248$|^PIC18LF4580$|^PIC18F2680$|^PIC18F8585$|^PIC18F6680$|^PIC18F25K80$|^PIC18F4585$|^PIC18LF4680$|^PIC18LF4480$|^PIC18LF2682$|^PIC18F66K80$|^PIC18LF4682$|^PIC18LF66K80$|^PIC18F458$|^PIC18F4685$|^PIC18F4480$|^PIC18LF4685$|^PIC18F448$|^PIC18F2580$|^PIC18F2480$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_C_A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_C_A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_CAN_C_A/__Lib_CAN_C_A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_CAN_C_A")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_C_A)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_CAN_C_A/__Lib_CAN_C_A.mcl\"")


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

