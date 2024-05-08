if (${MCU_NAME} MATCHES "^PIC18F87J60$|^PIC18F86J65$|^PIC18F67J60$|^PIC18F96J65$|^PIC18F66J60$|^PIC18F97J60$|^PIC18F96J60$|^PIC18F66J65$|^PIC18F86J60$")


    if (NOT TARGET MikroC.ETHERNET )
        add_library(__Lib_ETHERNET_j60 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ETHERNET_j60 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ETHERNET_j60/__Lib_ETHERNET_j60.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ETHERNET_j60")

    set(MikroC.ETHERNET_DEFINITIONS )


    if (NOT TARGET MikroC.ETHERNET )
        add_library(MikroC.ETHERNET INTERFACE)
    endif()

    target_link_libraries(MikroC.ETHERNET INTERFACE __Lib_ETHERNET_j60)
    set(MikroC.ETHERNET_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ETHERNET_j60/__Lib_ETHERNET_j60.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ETHERNET  DEFAULT_MSG
                                    MikroC.ETHERNET_LIBRARIES)


    set(MikroC.ETHERNET_INCLUDE_DIRS ${MikroC.ETHERNET_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ETHERNET_LIBRARIES})
    
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

