if (${MCU_NAME} MATCHES "^MSP432P401R$|^MSP432P401M$")


    if (NOT TARGET MikroC.AES256 )
        add_library(__Lib_AES256 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_AES256 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/MSP/__Lib_AES256/__Lib_AES256.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/MSP/__Lib_AES256")

    set(MikroC.AES256_DEFINITIONS )


    if (NOT TARGET MikroC.AES256 )
        add_library(MikroC.AES256 INTERFACE)
    endif()

    target_link_libraries(MikroC.AES256 INTERFACE __Lib_AES256)
    set(MikroC.AES256_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/MSP/__Lib_AES256/__Lib_AES256.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.AES256  DEFAULT_MSG
                                    MikroC.AES256_LIBRARIES)


    set(MikroC.AES256_INCLUDE_DIRS ${MikroC.AES256_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.AES256_LIBRARIES})
    
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

