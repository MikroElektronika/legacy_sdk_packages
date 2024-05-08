if (${MCU_NAME} MATCHES "^TM4C129XNCZAD$|^TM4C129XKCZAD$|^TM4C1290NCPDT$|^TM4C1294NCPDT$|^TM4C129EKCPDT$|^TM4C129DNCZAD$|^TM4C129CNCPDT$|^TM4C129ENCPDT$|^TM4C1299NCZAD$|^TM4C1292NCPDT$|^TM4C1297NCZAD$|^TM4C129DNCPDT$|^TM4C1290NCZAD$|^TM4C1294NCZAD$|^TM4C129ENCZAD$|^TM4C1294KCPDT$|^TM4C1292NCZAD$|^TM4C129CNCZAD$|^TM4C129LNCZAD$|^TM4C1299KCZAD$")


    if (NOT TARGET MikroC.EPI )
        add_library(__Lib_EPI UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EPI PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_EPI/__Lib_EPI.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_EPI")

    set(MikroC.EPI_DEFINITIONS )


    if (NOT TARGET MikroC.EPI )
        add_library(MikroC.EPI INTERFACE)
    endif()

    target_link_libraries(MikroC.EPI INTERFACE __Lib_EPI)
    set(MikroC.EPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_EPI/__Lib_EPI.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EPI  DEFAULT_MSG
                                    MikroC.EPI_LIBRARIES)


    set(MikroC.EPI_INCLUDE_DIRS ${MikroC.EPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EPI_LIBRARIES})
    
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

