if (${MCU_NAME} MATCHES "^MKV58F1M0.+24$|^MKV56F1M0.+24$|^MKV56F512.+24$|^MKV58F512.+24$")


    if (NOT TARGET MikroC.HSADC )
        add_library(__Lib_HSADC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_HSADC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_HSADC/__Lib_HSADC.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_HSADC")

    set(MikroC.HSADC_DEFINITIONS )


    if (NOT TARGET MikroC.HSADC )
        add_library(MikroC.HSADC INTERFACE)
    endif()

    target_link_libraries(MikroC.HSADC INTERFACE __Lib_HSADC)
    set(MikroC.HSADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_HSADC/__Lib_HSADC.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.HSADC  DEFAULT_MSG
                                    MikroC.HSADC_LIBRARIES)


    set(MikroC.HSADC_INCLUDE_DIRS ${MikroC.HSADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.HSADC_LIBRARIES})
    
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

