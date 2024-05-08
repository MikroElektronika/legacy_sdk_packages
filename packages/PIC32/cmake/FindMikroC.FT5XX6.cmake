if (${MCU_NAME} MATCHES "^PIC32(.+)$")


    if (NOT TARGET MikroC.FT5XX6 )
        add_library(__Lib_FT5XX6 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FT5XX6 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_FT5XX6/__Lib_FT5XX6.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_FT5XX6")

    set(MikroC.FT5XX6_DEFINITIONS )


    if (NOT TARGET MikroC.FT5XX6 )
        add_library(MikroC.FT5XX6 INTERFACE)
    endif()

    target_link_libraries(MikroC.FT5XX6 INTERFACE __Lib_FT5XX6)
    set(MikroC.FT5XX6_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_FT5XX6/__Lib_FT5XX6.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FT5XX6  DEFAULT_MSG
                                    MikroC.FT5XX6_LIBRARIES)


    set(MikroC.FT5XX6_INCLUDE_DIRS ${MikroC.FT5XX6_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FT5XX6_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32(.+)$")


    if (NOT TARGET MikroC.FT5XX6 )
        add_library(__Lib_FT5XX6 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FT5XX6 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_FT5XX6/__Lib_FT5XX6.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_FT5XX6")

    set(MikroC.FT5XX6_DEFINITIONS )


    if (NOT TARGET MikroC.FT5XX6 )
        add_library(MikroC.FT5XX6 INTERFACE)
    endif()

    target_link_libraries(MikroC.FT5XX6 INTERFACE __Lib_FT5XX6)
    set(MikroC.FT5XX6_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_FT5XX6/__Lib_FT5XX6.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FT5XX6  DEFAULT_MSG
                                    MikroC.FT5XX6_LIBRARIES)


    set(MikroC.FT5XX6_INCLUDE_DIRS ${MikroC.FT5XX6_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FT5XX6_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32(.+)$")


    if (NOT TARGET MikroC.FT5XX6 )
        add_library(__Lib_FT5XX6 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FT5XX6 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_FT5XX6/__Lib_FT5XX6.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_FT5XX6")

    set(MikroC.FT5XX6_DEFINITIONS )


    if (NOT TARGET MikroC.FT5XX6 )
        add_library(MikroC.FT5XX6 INTERFACE)
    endif()

    target_link_libraries(MikroC.FT5XX6 INTERFACE __Lib_FT5XX6)
    set(MikroC.FT5XX6_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_FT5XX6/__Lib_FT5XX6.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FT5XX6  DEFAULT_MSG
                                    MikroC.FT5XX6_LIBRARIES)


    set(MikroC.FT5XX6_INCLUDE_DIRS ${MikroC.FT5XX6_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FT5XX6_LIBRARIES})
    
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

