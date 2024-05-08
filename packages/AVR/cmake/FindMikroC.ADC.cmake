if (${MCU_NAME} MATCHES "^ATXMEGA128A4U$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_a UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_a PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_a/__Lib_ADC_a.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_a")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_a)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_a/__Lib_ADC_a.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA192A3U$|^ATXMEGA128A1$|^ATXMEGA256A3BU$|^ATXMEGA256A3U$|^ATXMEGA256A3B$|^ATXMEGA128A3U$|^ATXMEGA128A1U$|^ATXMEGA128A3$|^ATXMEGA128B1$|^ATXMEGA192A3$|^ATXMEGA256A3$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ab UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ab PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_ab/__Lib_ADC_ab.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_ab")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ab)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_ab/__Lib_ADC_ab.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA128B3$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_b0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_b0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_b0/__Lib_ADC_b0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_b0")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_b0)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_b0/__Lib_ADC_b0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA2560$|^ATMEGA2561$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_mux_ref1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_mux_ref1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_mux_ref1/__Lib_ADC_mux_ref1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_mux_ref1")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_mux_ref1)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_mux_ref1/__Lib_ADC_mux_ref1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA192C3$|^ATXMEGA256D3$|^ATXMEGA384D3$|^ATXMEGA128D4$|^ATXMEGA384C3$|^ATXMEGA128C3$|^ATXMEGA128D3$|^ATXMEGA192D3$|^ATXMEGA256C3$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_a0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_a0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_a0/__Lib_ADC_a0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_a0")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_a0)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_ADC_a0/__Lib_ADC_a0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY461A$|^ATTINY261A$|^ATTINY861A$|^ATTINY461$|^ATTINY861$|^ATTINY261$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ref6 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ref6 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref6/__Lib_ADC_ref6.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref6")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ref6)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref6/__Lib_ADC_ref6.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA644P$|^ATMEGA324$|^ATMEGA324A$|^ATMEGA1284P$|^ATMEGA644A$|^ATMEGA164A$|^ATMEGA644$|^ATMEGA644PA$|^ATMEGA164P$|^ATMEGA324PA$|^ATMEGA164PA$|^ATMEGA1284$|^ATMEGA164$|^ATMEGA324P$|^ATMEGA324PB$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_eio_ref1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_eio_ref1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref1/__Lib_ADC_eio_ref1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref1")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_eio_ref1)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref1/__Lib_ADC_eio_ref1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY814$|^ATTINY816$|^ATTINY417$|^ATTINY817$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_tiny UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_tiny PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_tiny/__Lib_ADC_tiny.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_tiny")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_tiny)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_tiny/__Lib_ADC_tiny.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA16A4U$|^ATXMEGA32A4$|^ATXMEGA16A4$|^ATXMEGA32A4U$|^ATXMEGA64A4U$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_a UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_a PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_a/__Lib_ADC_a.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_a")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_a)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_a/__Lib_ADC_a.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY26$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ref8 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ref8 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref8/__Lib_ADC_ref8.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref8")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ref8)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref8/__Lib_ADC_ref8.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA32C1$|^ATMEGA32U6$|^ATMEGA32M1$|^ATMEGA64C1$|^ATMEGA64M1$|^ATMEGA16M1$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_eio_ref4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_eio_ref4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref4/__Lib_ADC_eio_ref4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref4")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_eio_ref4)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref4/__Lib_ADC_eio_ref4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA64A1$|^ATXMEGA64A1U$|^ATXMEGA64B1$|^ATXMEGA64A3$|^ATXMEGA64A3U$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ab UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ab PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ab/__Lib_ADC_ab.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ab")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ab)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ab/__Lib_ADC_ab.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY44A$|^ATTINY84A$|^ATTINY44$|^ATTINY84$|^ATTINY1634$|^ATTINY24A$|^ATTINY24$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ref2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ref2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref2/__Lib_ADC_ref2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref2")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ref2)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref2/__Lib_ADC_ref2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA64B3$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_b0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_b0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_b0/__Lib_ADC_b0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_b0")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_b0)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_b0/__Lib_ADC_b0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY104$|^ATTINY102$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ref7 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ref7 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref7/__Lib_ADC_ref7.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref7")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ref7)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref7/__Lib_ADC_ref7.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY45$|^ATTINY85$|^ATTINY25$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ref5 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ref5 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref5/__Lib_ADC_ref5.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref5")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ref5)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref5/__Lib_ADC_ref5.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA1281$|^ATMEGA640$|^ATMEGA1280$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_mux_ref1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_mux_ref1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ref1/__Lib_ADC_mux_ref1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ref1")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_mux_ref1)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ref1/__Lib_ADC_mux_ref1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA16HVA$|^ATMEGA32HVB$|^ATMEGA8HVA$|^ATMEGA16HVB$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_HVA UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_HVA PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_HVA/__Lib_ADC_HVA.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_HVA")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_HVA)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_HVA/__Lib_ADC_HVA.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA3250P$|^ATMEGA645$|^ATMEGA6490$|^ATMEGA328PB$|^ATMEGA168A$|^ATMEGA325A$|^ATMEGA48PA$|^ATMEGA649P$|^ATMEGA3290P$|^ATMEGA6450P$|^ATMEGA328P$|^ATMEGA329P$|^ATMEGA48$|^ATMEGA3290$|^ATMEGA325PA$|^ATMEGA3250A$|^ATMEGA645P$|^ATMEGA169A$|^ATMEGA3250PA$|^ATMEGA165A$|^ATMEGA3290A$|^ATMEGA6450A$|^ATMEGA325P$|^ATMEGA6450$|^ATMEGA169PA$|^ATMEGA329PA$|^ATMEGA649$|^ATMEGA6490P$|^ATMEGA88A$|^ATMEGA48P$|^ATMEGA325$|^ATMEGA649A$|^ATMEGA328$|^ATMEGA165P$|^ATMEGA168PB$|^ATMEGA88P$|^ATMEGA329$|^ATMEGA168$|^ATMEGA165PA$|^ATMEGA645A$|^ATMEGA165$|^ATMEGA329A$|^ATMEGA169$|^ATMEGA88PA$|^ATMEGA168PA$|^ATMEGA168P$|^ATMEGA3250$|^ATMEGA6490A$|^ATMEGA88PB$|^ATMEGA88$|^ATMEGA48A$|^ATMEGA48PB$|^ATMEGA169P$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_eio_ref2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_eio_ref2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref2/__Lib_ADC_eio_ref2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref2")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_eio_ref2)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref2/__Lib_ADC_eio_ref2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90S8535$|^ATMEGA103$|^AT90S4434$|^AT90S4433$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC/__Lib_ADC.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC/__Lib_ADC.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY828$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_mux_ab_ref2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_mux_ab_ref2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ab_ref2/__Lib_ADC_mux_ab_ref2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ab_ref2")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_mux_ab_ref2)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ab_ref2/__Lib_ADC_mux_ab_ref2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA16C4$|^ATXMEGA32C4$|^ATXMEGA64D3$|^ATXMEGA64C3$|^ATXMEGA16D4$|^ATXMEGA32D4$|^ATXMEGA32C3$|^ATXMEGA32D3$|^ATXMEGA64D4$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_a0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_a0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_a0/__Lib_ADC_a0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_a0")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_a0)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_a0/__Lib_ADC_a0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY88$|^ATTINY48$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ref4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ref4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref4/__Lib_ADC_ref4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref4")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ref4)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref4/__Lib_ADC_ref4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA8E5$|^ATXMEGA32E5$|^ATXMEGA16E5$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_e UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_e PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_e/__Lib_ADC_e.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_e")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_e)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_e/__Lib_ADC_e.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY841$|^ATTINY441$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_mux_ab_ref1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_mux_ab_ref1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ab_ref1/__Lib_ADC_mux_ab_ref1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ab_ref1")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_mux_ab_ref1)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ab_ref1/__Lib_ADC_mux_ab_ref1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA16U4$|^ATMEGA32U4$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_mux_ref2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_mux_ref2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ref2/__Lib_ADC_mux_ref2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ref2")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_mux_ref2)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_mux_ref2/__Lib_ADC_mux_ref2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY13A$|^ATTINY13$|^ATTINY43U$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ref1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ref1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref1/__Lib_ADC_ref1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref1")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ref1)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref1/__Lib_ADC_ref1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY167$|^ATTINY87$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_amiscr UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_amiscr PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_amiscr/__Lib_ADC_amiscr.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_amiscr")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_amiscr)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_amiscr/__Lib_ADC_amiscr.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90PWM2B$|^AT90USB646$|^AT90CAN64$|^AT90USB1286$|^AT90PWM216$|^AT90USB1287$|^AT90PWM316$|^AT90PWM1$|^AT90PWM2$|^AT90PWM3$|^AT90CAN128$|^AT90CAN32$|^AT90PWM3B$|^AT90USB647$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_eio_ref3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_eio_ref3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref3/__Lib_ADC_eio_ref3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref3")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_eio_ref3)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_eio_ref3/__Lib_ADC_eio_ref3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA16A$|^ATMEGA64$|^AT90PWM81$|^ATMEGA16$|^ATMEGA32A$|^ATMEGA323$|^ATMEGA8A$|^ATMEGA128$|^ATMEGA163$|^ATMEGA64A$|^AT90PWM161$|^ATMEGA8535$|^ATMEGA32$|^ATMEGA8$|^ATMEGA128A$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_ref3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_ref3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref3/__Lib_ADC_ref3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref3")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_ref3)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_ADC_ref3/__Lib_ADC_ref3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

