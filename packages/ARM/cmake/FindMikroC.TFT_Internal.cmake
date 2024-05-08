if (${MCU_NAME} MATCHES "^TM4C129XKCZAD$|^TM4C129LNCZAD$|^TM4C129XNCZAD$|^TM4C1297NCZAD$|^TM4C1299NCZAD$|^TM4C1299KCZAD$")


    if (NOT TARGET MikroC.TFT_Internal )
        add_library(__Lib_TFT_Internal UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TFT_Internal PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_TFT_Internal/__Lib_TFT_Internal.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_TFT_Internal")

    set(MikroC.TFT_Internal_DEFINITIONS )


    if (NOT TARGET MikroC.TFT_Internal )
        add_library(MikroC.TFT_Internal INTERFACE)
    endif()

    target_link_libraries(MikroC.TFT_Internal INTERFACE __Lib_TFT_Internal)
    set(MikroC.TFT_Internal_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_TFT_Internal/__Lib_TFT_Internal.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TFT_Internal  DEFAULT_MSG
                                    MikroC.TFT_Internal_LIBRARIES)


    set(MikroC.TFT_Internal_INCLUDE_DIRS ${MikroC.TFT_Internal_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TFT_Internal_LIBRARIES})
    
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

