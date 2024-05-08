if (${MCU_NAME} MATCHES "^dsPIC33EP128GS806$|^dsPIC33EP128GM710$|^dsPIC33EP128GM604$|^dsPIC33EP128GM706$|^dsPIC33EP512GM604$|^dsPIC33EP512GM710$|^dsPIC33EP64GS805$|^PIC24EP512GU814$|^dsPIC33EP64GS808$|^PIC24EP256GU814$|^dsPIC33EP64GS806$|^dsPIC33EP256GM706$|^dsPIC33EP64GS804$|^PIC24EP256GU810$|^dsPIC33EP256MU810$|^dsPIC33EP512MU810$|^dsPIC33EP256GM710$|^dsPIC33EP256MU806$|^dsPIC33EP512MU814$|^dsPIC33EP256GM604$|^dsPIC33EP512MC806$|^dsPIC33EP128GS804$|^PIC24EP512GU810$|^dsPIC33EP256MU814$|^PIC24EP512GP806$|^dsPIC33EP128GS805$|^dsPIC33EP128GS808$|^dsPIC33EP512GM706$|^dsPIC33EP512GP806$")


    if (NOT TARGET MikroC.ECAN )
        add_library(__Lib_ECAN_12_EP UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ECAN_12_EP PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_12_EP/__Lib_ECAN_12_EP.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_12_EP")

    set(MikroC.ECAN_DEFINITIONS )


    if (NOT TARGET MikroC.ECAN )
        add_library(MikroC.ECAN INTERFACE)
    endif()

    target_link_libraries(MikroC.ECAN INTERFACE __Lib_ECAN_12_EP)
    set(MikroC.ECAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_12_EP/__Lib_ECAN_12_EP.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ECAN  DEFAULT_MSG
                                    MikroC.ECAN_LIBRARIES)


    set(MikroC.ECAN_INCLUDE_DIRS ${MikroC.ECAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ECAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^dsPIC33EP64GP504$|^dsPIC33EP128MC502$|^dsPIC33EP512MC506$|^dsPIC33EP64GP503$|^dsPIC33EP128GP506$|^dsPIC33EP128MC506$|^dsPIC33EP256GP506$|^dsPIC33EP32GP503$|^dsPIC33EP64MC503$|^dsPIC33EP32GP504$|^dsPIC33EP256MC506$|^dsPIC33EP128GP504$|^dsPIC33EP512GP506$|^dsPIC33EP32MC504$|^dsPIC33EP32GP502$|^dsPIC33EP32MC502$|^dsPIC33EP128MC504$|^dsPIC33EP256GP504$|^dsPIC33EP512MC504$|^dsPIC33EP64MC504$|^dsPIC33EP256MC504$|^dsPIC33EP512GP504$|^dsPIC33EP32MC503$|^dsPIC33EP256GP502$|^dsPIC33EP64MC502$|^dsPIC33EP512GP502$|^dsPIC33EP64GP506$|^dsPIC33EP128GP502$|^dsPIC33EP64GP502$|^dsPIC33EP256MC502$|^dsPIC33EP64MC506$|^dsPIC33EP512MC502$")


    if (NOT TARGET MikroC.ECAN )
        add_library(__Lib_ECAN_1_EP UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ECAN_1_EP PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1_EP/__Lib_ECAN_1_EP.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1_EP")

    set(MikroC.ECAN_DEFINITIONS )


    if (NOT TARGET MikroC.ECAN )
        add_library(MikroC.ECAN INTERFACE)
    endif()

    target_link_libraries(MikroC.ECAN INTERFACE __Lib_ECAN_1_EP)
    set(MikroC.ECAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1_EP/__Lib_ECAN_1_EP.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ECAN  DEFAULT_MSG
                                    MikroC.ECAN_LIBRARIES)


    set(MikroC.ECAN_INCLUDE_DIRS ${MikroC.ECAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ECAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC24HJ128GP510A$|^dsPIC33FJ256MC510A$|^PIC24HJ128GP506A$|^dsPIC33FJ256MC510$|^dsPIC33FJ256GP510$|^PIC24HJ128GP510$|^dsPIC33FJ64MC510$|^PIC24HJ64GP506$|^dsPIC33FJ64GP804$|^dsPIC33FJ64MC506$|^PIC24HJ64GP506A$|^PIC24HJ128GP506$|^PIC24HJ64GP510A$|^dsPIC33FJ64GS608$|^dsPIC33FJ128MC510$|^dsPIC33FJ64GS610$|^dsPIC33FJ64MC508A$|^dsPIC33FJ128GP804$|^dsPIC33FJ64MC510A$|^dsPIC33FJ64MC506A$|^PIC24HJ64GP502$|^dsPIC33FJ128MC506$|^dsPIC33FJ128MC804$|^dsPIC33FJ128GP802$|^dsPIC33FJ256GP510A$|^dsPIC33FJ64MC802$|^dsPIC33FJ64MC508$|^dsPIC33FJ64MC804$|^dsPIC33FJ64MC706$|^PIC24HJ128GP504$|^dsPIC33FJ128MC802$|^dsPIC33FJ128MC510A$|^dsPIC33FJ128MC706A$|^PIC24HJ64GP510$|^dsPIC33FJ256GP506A$|^PIC24HJ64GP504$|^dsPIC33FJ64MC706A$|^dsPIC33FJ64GS606$|^PIC24HJ128GP502$|^dsPIC33FJ128MC506A$|^dsPIC33FJ64GP802$|^dsPIC33FJ256GP506$|^dsPIC33FJ128MC706$")


    if (NOT TARGET MikroC.ECAN )
        add_library(__Lib_ECAN_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ECAN_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1/__Lib_ECAN_1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1")

    set(MikroC.ECAN_DEFINITIONS )


    if (NOT TARGET MikroC.ECAN )
        add_library(MikroC.ECAN INTERFACE)
    endif()

    target_link_libraries(MikroC.ECAN INTERFACE __Lib_ECAN_1)
    set(MikroC.ECAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1/__Lib_ECAN_1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ECAN  DEFAULT_MSG
                                    MikroC.ECAN_LIBRARIES)


    set(MikroC.ECAN_INCLUDE_DIRS ${MikroC.ECAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ECAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^dsPIC33EV64GM106$|^dsPIC33EV256GM102$|^dsPIC33EV32GM104$|^dsPIC33EV32GM106$|^dsPIC33EV128GM102$|^dsPIC33EV128GM106$|^dsPIC33EV32GM102$|^dsPIC33EV64GM102$|^dsPIC33EV64GM104$|^dsPIC33EV256GM104$|^dsPIC33EV128GM104$|^dsPIC33EV256GM106$")


    if (NOT TARGET MikroC.ECAN )
        add_library(__Lib_ECAN_1_EV UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ECAN_1_EV PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1_EV/__Lib_ECAN_1_EV.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1_EV")

    set(MikroC.ECAN_DEFINITIONS )


    if (NOT TARGET MikroC.ECAN )
        add_library(MikroC.ECAN INTERFACE)
    endif()

    target_link_libraries(MikroC.ECAN INTERFACE __Lib_ECAN_1_EV)
    set(MikroC.ECAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_1_EV/__Lib_ECAN_1_EV.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ECAN  DEFAULT_MSG
                                    MikroC.ECAN_LIBRARIES)


    set(MikroC.ECAN_INCLUDE_DIRS ${MikroC.ECAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ECAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^dsPIC33FJ256GP710$|^dsPIC33FJ128GP708A$|^dsPIC33FJ256GP710A$|^dsPIC33FJ128GP706$|^dsPIC33FJ64GP706$|^dsPIC33FJ128GP710$|^dsPIC33FJ128GP706A$|^dsPIC33FJ64GP708$|^dsPIC33FJ128GP708$|^dsPIC33FJ128MC708A$|^dsPIC33FJ64MC710A$|^dsPIC33FJ64GP708A$|^dsPIC33FJ64GP710$|^dsPIC33FJ64GP710A$|^PIC24HJ256GP610A$|^dsPIC33FJ128MC710$|^dsPIC33FJ256MC710A$|^dsPIC33FJ64MC710$|^PIC24HJ256GP610$|^dsPIC33FJ128MC708$|^dsPIC33FJ128MC710A$|^dsPIC33FJ128GP710A$|^dsPIC33FJ256MC710$|^dsPIC33FJ64GP706A$")


    if (NOT TARGET MikroC.ECAN )
        add_library(__Lib_ECAN_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ECAN_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_12/__Lib_ECAN_12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_12")

    set(MikroC.ECAN_DEFINITIONS )


    if (NOT TARGET MikroC.ECAN )
        add_library(MikroC.ECAN INTERFACE)
    endif()

    target_link_libraries(MikroC.ECAN INTERFACE __Lib_ECAN_12)
    set(MikroC.ECAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ECAN_12/__Lib_ECAN_12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ECAN  DEFAULT_MSG
                                    MikroC.ECAN_LIBRARIES)


    set(MikroC.ECAN_INCLUDE_DIRS ${MikroC.ECAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ECAN_LIBRARIES})
    
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
