if (${MCU_NAME} MATCHES "^ATXMEGA128B3$|^ATXMEGA128B1$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_c567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_c567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567/__Lib_SPI_c567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_c567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567/__Lib_SPI_c567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b1320_x2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b1320_x2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_b1320_x2/__Lib_SPI_b1320_x2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_b1320_x2")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b1320_x2)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_b1320_x2/__Lib_SPI_b1320_x2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA128A1$|^ATXMEGA128A1U$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_c567_d567_e567_f567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_c567_d567_e567_f567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567_e567_f567/__Lib_SPI_c567_d567_e567_f567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567_e567_f567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_c567_d567_e567_f567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567_e567_f567/__Lib_SPI_c567_d567_e567_f567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA192C3$|^ATXMEGA256D3$|^ATXMEGA256A3BU$|^ATXMEGA384D3$|^ATXMEGA128D4$|^ATXMEGA256A3B$|^ATXMEGA128A4U$|^ATXMEGA384C3$|^ATXMEGA128C3$|^ATXMEGA128D3$|^ATXMEGA192D3$|^ATXMEGA256C3$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_c567_d567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_c567_d567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567/__Lib_SPI_c567_d567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_c567_d567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567/__Lib_SPI_c567_d567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA192A3U$|^ATXMEGA256A3U$|^ATXMEGA128A3U$|^ATXMEGA128A3$|^ATXMEGA192A3$|^ATXMEGA256A3$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_c567_d567_e567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_c567_d567_e567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567_e567/__Lib_SPI_c567_d567_e567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567_e567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_c567_d567_e567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPI_c567_d567_e567/__Lib_SPI_c567_d567_e567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_a5246 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_a5246 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_a5246/__Lib_SPI_a5246.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_a5246")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_a5246)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_a5246/__Lib_SPI_a5246.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA48$|^ATMEGA168PA$|^ATMEGA88PA$|^ATMEGA48PB$|^ATTINY48$|^ATMEGA8A$|^ATMEGA48A$|^ATMEGA88PB$|^ATMEGA88P$|^ATMEGA328$|^ATMEGA48PA$|^ATMEGA88A$|^ATMEGA48P$|^ATMEGA168$|^ATTINY88$|^ATMEGA328P$|^ATMEGA88$|^ATMEGA168A$|^ATMEGA8$|^ATMEGA168PB$|^ATMEGA168P$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b5432_x2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b5432_x2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5432_x2/__Lib_SPI_b5432_x2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5432_x2")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b5432_x2)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5432_x2/__Lib_SPI_b5432_x2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA32C1$|^ATMEGA32M1$|^ATMEGA64C1$|^ATMEGA64M1$|^ATMEGA16M1$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b701d3_alt_d423c1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b701d3_alt_d423c1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423c1/__Lib_SPI_b701d3_alt_d423c1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423c1")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b701d3_alt_d423c1)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423c1/__Lib_SPI_b701d3_alt_d423c1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA8E5$|^ATXMEGA64B1$|^ATXMEGA64B3$|^ATXMEGA32E5$|^ATXMEGA16E5$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_c567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_c567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567/__Lib_SPI_c567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_c567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567/__Lib_SPI_c567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90PWM316$|^AT90PWM3$|^AT90PWM3B$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b701d3_alt_d423d0_32p UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b701d3_alt_d423d0_32p PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423d0_32p/__Lib_SPI_b701d3_alt_d423d0_32p.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423d0_32p")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b701d3_alt_d423d0_32p)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423d0_32p/__Lib_SPI_b701d3_alt_d423d0_32p.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA32HVB$|^ATMEGA16HVB$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b5764_x2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b5764_x2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5764_x2/__Lib_SPI_b5764_x2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5764_x2")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b5764_x2)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5764_x2/__Lib_SPI_b5764_x2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90S4414$|^AT90S8535$|^AT90S4434$|^AT90S8515$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b7654 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b7654 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b7654/__Lib_SPI_b7654.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b7654")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b7654)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b7654/__Lib_SPI_b7654.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA644A$|^ATMEGA164A$|^ATMEGA8515$|^ATMEGA164PA$|^ATMEGA32A$|^ATMEGA324P$|^ATMEGA324PA$|^ATMEGA324A$|^ATMEGA164P$|^ATMEGA1284P$|^ATMEGA323$|^ATMEGA164$|^ATMEGA32$|^ATMEGA162$|^ATMEGA8535$|^ATMEGA16$|^ATMEGA644$|^ATMEGA161$|^ATMEGA324$|^ATMEGA644P$|^ATMEGA644PA$|^ATMEGA1284$|^ATMEGA16A$|^ATMEGA163$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b7654_x2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b7654_x2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b7654_x2/__Lib_SPI_b7654_x2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b7654_x2")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b7654_x2)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b7654_x2/__Lib_SPI_b7654_x2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA3250P$|^ATMEGA645$|^ATMEGA6490$|^AT90USB1287$|^ATMEGA325A$|^ATMEGA649P$|^ATMEGA1281$|^ATMEGA3290P$|^ATMEGA128A$|^AT90USB647$|^ATMEGA6450P$|^ATMEGA329P$|^ATMEGA3290$|^AT90USB162$|^ATMEGA325PA$|^ATMEGA3250A$|^ATMEGA645P$|^ATMEGA169A$|^ATMEGA3250PA$|^ATMEGA165A$|^ATMEGA3290A$|^ATMEGA16U4$|^AT90USB646$|^ATMEGA6450A$|^ATMEGA325P$|^AT90USB82$|^ATMEGA6450$|^ATMEGA169PA$|^ATMEGA329PA$|^ATMEGA649$|^AT90CAN32$|^ATMEGA6490P$|^ATMEGA8U2$|^ATMEGA325$|^ATMEGA32U6$|^ATMEGA649A$|^AT90CAN64$|^ATMEGA165P$|^ATMEGA64A$|^ATMEGA1280$|^AT90USB1286$|^ATMEGA128$|^ATMEGA329$|^ATMEGA165PA$|^ATMEGA8HVA$|^ATMEGA32U4$|^ATMEGA64$|^ATMEGA640$|^ATMEGA645A$|^ATMEGA165$|^ATMEGA329A$|^ATMEGA169$|^ATMEGA3250$|^AT90CAN128$|^ATMEGA6490A$|^ATMEGA16U2$|^ATMEGA32U2$|^ATMEGA16HVA$|^ATMEGA169P$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b1320_x2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b1320_x2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b1320_x2/__Lib_SPI_b1320_x2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b1320_x2")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b1320_x2)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b1320_x2/__Lib_SPI_b1320_x2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA64A1$|^ATXMEGA64A1U$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_c567_d567_e567_f567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_c567_d567_e567_f567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567_e567_f567/__Lib_SPI_c567_d567_e567_f567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567_e567_f567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_c567_d567_e567_f567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567_e567_f567/__Lib_SPI_c567_d567_e567_f567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA324PB$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_01_b567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_01_b567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_01_b567/__Lib_SPI_01_b567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_01_b567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_01_b567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_01_b567/__Lib_SPI_01_b567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA103$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b1320 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b1320 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b1320/__Lib_SPI_b1320.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b1320")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b1320)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b1320/__Lib_SPI_b1320.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_a4567_alt_a3012 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_a4567_alt_a3012 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_a4567_alt_a3012/__Lib_SPI_a4567_alt_a3012.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_a4567_alt_a3012")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_a4567_alt_a3012)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_a4567_alt_a3012/__Lib_SPI_a4567_alt_a3012.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA16C4$|^ATXMEGA16A4U$|^ATXMEGA32C4$|^ATXMEGA32A4$|^ATXMEGA64D3$|^ATXMEGA64C3$|^ATXMEGA16A4$|^ATXMEGA32A4U$|^ATXMEGA16D4$|^ATXMEGA32D4$|^ATXMEGA64A4U$|^ATXMEGA32C3$|^ATXMEGA32D3$|^ATXMEGA64D4$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_c567_d567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_c567_d567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567/__Lib_SPI_c567_d567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_c567_d567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567/__Lib_SPI_c567_d567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90S4433$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b5432 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b5432 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5432/__Lib_SPI_b5432.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5432")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b5432)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b5432/__Lib_SPI_b5432.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA328PB$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_01_b345 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_01_b345 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_01_b345/__Lib_SPI_01_b345.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_01_b345")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_01_b345)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_01_b345/__Lib_SPI_01_b345.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_0_b123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_0_b123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_0_b123/__Lib_SPI_0_b123.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_0_b123")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_0_b123)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_0_b123/__Lib_SPI_0_b123.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_0_a123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_0_a123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_0_a123/__Lib_SPI_0_a123.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_0_a123")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_0_a123)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_0_a123/__Lib_SPI_0_a123.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90PWM2B$|^AT90PWM216$|^AT90PWM1$|^AT90PWM2$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b701d3_alt_d423d0_24p UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b701d3_alt_d423d0_24p PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423d0_24p/__Lib_SPI_b701d3_alt_d423d0_24p.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423d0_24p")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b701d3_alt_d423d0_24p)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b701d3_alt_d423d0_24p/__Lib_SPI_b701d3_alt_d423d0_24p.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA64A3$|^ATXMEGA64A3U$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_c567_d567_e567 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_c567_d567_e567 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567_e567/__Lib_SPI_c567_d567_e567.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567_e567")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_c567_d567_e567)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_c567_d567_e567/__Lib_SPI_c567_d567_e567.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90PWM81$|^AT90PWM161$")


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_b564_d0_x2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_b564_d0_x2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b564_d0_x2/__Lib_SPI_b564_d0_x2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b564_d0_x2")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_b564_d0_x2)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_b564_d0_x2/__Lib_SPI_b564_d0_x2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.SPI )
        add_library(__Lib_SPI_d310_c0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_d310_c0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_d310_c0/__Lib_SPI_d310_c0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_d310_c0")

    set(MikroC.SPI_DEFINITIONS )


    if (NOT TARGET MikroC.SPI )
        add_library(MikroC.SPI INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI INTERFACE __Lib_SPI_d310_c0)
    set(MikroC.SPI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPI_d310_c0/__Lib_SPI_d310_c0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI  DEFAULT_MSG
                                    MikroC.SPI_LIBRARIES)


    set(MikroC.SPI_INCLUDE_DIRS ${MikroC.SPI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_LIBRARIES})
    
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

