if (${MCU_NAME} MATCHES "^MK80FN256.+15$|^MK82FN256.+15$")


    if (NOT TARGET MikroC.LPUART )
        add_library(__Lib_LPUART_01234 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_LPUART_01234 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_LPUART_01234/__Lib_LPUART_01234.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_LPUART_01234")

    set(MikroC.LPUART_DEFINITIONS )


    if (NOT TARGET MikroC.LPUART )
        add_library(MikroC.LPUART INTERFACE)
    endif()

    target_link_libraries(MikroC.LPUART INTERFACE __Lib_LPUART_01234)
    set(MikroC.LPUART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_LPUART_01234/__Lib_LPUART_01234.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.LPUART  DEFAULT_MSG
                                    MikroC.LPUART_LIBRARIES)


    set(MikroC.LPUART_INCLUDE_DIRS ${MikroC.LPUART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.LPUART_LIBRARIES})
    
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

