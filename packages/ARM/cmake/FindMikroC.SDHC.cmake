if (${MCU_NAME} MATCHES "^MK64FN1M0.+12$|^MK64FX512.+12$|^MK66FN2M0.+18$|^MK80FN256.+15$|^MK66FX1M0.+18$|^MK65FN2M0.+18$|^MK82FN256.+15$|^MK65FX1M0.+18$")


    if (NOT TARGET MikroC.SDHC )
        add_library(__Lib_SDHC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SDHC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_SDHC/__Lib_SDHC.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_SDHC")

    set(MikroC.SDHC_DEFINITIONS )


    if (NOT TARGET MikroC.SDHC )
        add_library(MikroC.SDHC INTERFACE)
    endif()

    target_link_libraries(MikroC.SDHC INTERFACE __Lib_SDHC)
    set(MikroC.SDHC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_SDHC/__Lib_SDHC.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SDHC  DEFAULT_MSG
                                    MikroC.SDHC_LIBRARIES)


    set(MikroC.SDHC_INCLUDE_DIRS ${MikroC.SDHC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SDHC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK53DN512.+10$|^MK60DN256.+10$|^MK60DN512.+10$|^MK51DN512.+10$|^MK60DX256.+10$|^MK51DX256.+10$|^MK51DN256.+10$|^MK53DX256.+10$")


    if (NOT TARGET MikroC.SDHC )
        add_library(__Lib_SDHC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SDHC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_SDHC/__Lib_SDHC.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_SDHC")

    set(MikroC.SDHC_DEFINITIONS )


    if (NOT TARGET MikroC.SDHC )
        add_library(MikroC.SDHC INTERFACE)
    endif()

    target_link_libraries(MikroC.SDHC INTERFACE __Lib_SDHC)
    set(MikroC.SDHC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_SDHC/__Lib_SDHC.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SDHC  DEFAULT_MSG
                                    MikroC.SDHC_LIBRARIES)


    set(MikroC.SDHC_INCLUDE_DIRS ${MikroC.SDHC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SDHC_LIBRARIES})
    
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

