if (${MCU_NAME} MATCHES "^ATXMEGA192A3U$|^ATXMEGA192C3$|^ATXMEGA256A3BU$|^ATXMEGA256A3U$|^ATXMEGA256A3B$|^ATXMEGA128A3U$|^ATXMEGA128A4U$|^ATXMEGA128A3$|^ATXMEGA192A3$|^ATXMEGA256A3$|^ATXMEGA384C3$|^ATXMEGA128C3$|^ATXMEGA256C3$")


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_c01_e01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_c01_e01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01_e01/__Lib_TWI_c01_e01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01_e01")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_c01_e01)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01_e01/__Lib_TWI_c01_e01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA256D3$|^ATXMEGA128B3$|^ATXMEGA384D3$|^ATXMEGA128D4$|^ATXMEGA128B1$|^ATXMEGA128D3$|^ATXMEGA192D3$")


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_c01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_c01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01/__Lib_TWI_c01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_c01)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01/__Lib_TWI_c01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_eio/__Lib_TWI_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_eio")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_eio)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_eio/__Lib_TWI_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_c01_d01_e01_f01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_c01_d01_e01_f01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01_d01_e01_f01/__Lib_TWI_c01_d01_e01_f01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01_d01_e01_f01")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_c01_d01_e01_f01)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_TWI_c01_d01_e01_f01/__Lib_TWI_c01_d01_e01_f01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA16C4$|^ATXMEGA16A4U$|^ATXMEGA32C4$|^ATXMEGA32A4$|^ATXMEGA64A3$|^ATXMEGA64C3$|^ATXMEGA64A3U$|^ATXMEGA16A4$|^ATXMEGA32A4U$|^ATXMEGA64A4U$|^ATXMEGA32C3$")


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_c01_e01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_c01_e01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01_e01/__Lib_TWI_c01_e01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01_e01")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_c01_e01)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01_e01/__Lib_TWI_c01_e01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA8E5$|^ATXMEGA64B1$|^ATXMEGA64B3$|^ATXMEGA64D3$|^ATXMEGA16D4$|^ATXMEGA32E5$|^ATXMEGA32D4$|^ATXMEGA16E5$|^ATXMEGA32D3$|^ATXMEGA64D4$")


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_c01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_c01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01/__Lib_TWI_c01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_c01)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01/__Lib_TWI_c01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA164A$|^ATMEGA32HVB$|^AT90USB1287$|^ATTINY48$|^ATMEGA168A$|^ATMEGA48PA$|^ATMEGA1281$|^ATMEGA128A$|^AT90USB647$|^ATMEGA16HVB$|^ATMEGA328P$|^ATMEGA1284P$|^ATMEGA48$|^ATMEGA164$|^ATMEGA324A$|^ATMEGA16U4$|^AT90USB646$|^ATMEGA644A$|^ATMEGA644$|^ATMEGA324P$|^AT90CAN32$|^ATMEGA88A$|^ATMEGA48P$|^ATMEGA32U6$|^ATTINY88$|^ATMEGA328$|^AT90CAN64$|^ATMEGA64A$|^ATMEGA1280$|^ATMEGA644P$|^AT90USB1286$|^ATMEGA168PB$|^ATMEGA88P$|^ATMEGA128$|^ATMEGA168$|^ATMEGA32U4$|^ATMEGA64$|^ATMEGA640$|^ATMEGA1284$|^ATMEGA324$|^ATMEGA88PA$|^ATMEGA168PA$|^ATMEGA168P$|^ATMEGA164P$|^AT90CAN128$|^ATMEGA324PA$|^ATMEGA88PB$|^ATMEGA644PA$|^ATMEGA88$|^ATMEGA48A$|^ATMEGA164PA$|^ATMEGA406$|^ATMEGA48PB$")


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_eio/__Lib_TWI_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_eio")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_eio)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_eio/__Lib_TWI_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA328PB$|^ATMEGA324PB$")


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_eio12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_eio12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_eio12/__Lib_TWI_eio12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_eio12")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_eio12)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_eio12/__Lib_TWI_eio12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA16A$|^ATMEGA16$|^ATMEGA32A$|^ATMEGA323$|^ATMEGA8A$|^ATMEGA163$|^ATMEGA8535$|^ATMEGA32$|^ATMEGA8$")


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI/__Lib_TWI.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI/__Lib_TWI.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_c01_d01_e01_f01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_c01_d01_e01_f01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01_d01_e01_f01/__Lib_TWI_c01_d01_e01_f01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01_d01_e01_f01")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_c01_d01_e01_f01)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_c01_d01_e01_f01/__Lib_TWI_c01_d01_e01_f01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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


    if (NOT TARGET MikroC.TWI )
        add_library(__Lib_TWI_tiny UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TWI_tiny PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_tiny/__Lib_TWI_tiny.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_tiny")

    set(MikroC.TWI_DEFINITIONS )


    if (NOT TARGET MikroC.TWI )
        add_library(MikroC.TWI INTERFACE)
    endif()

    target_link_libraries(MikroC.TWI INTERFACE __Lib_TWI_tiny)
    set(MikroC.TWI_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_TWI_tiny/__Lib_TWI_tiny.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TWI  DEFAULT_MSG
                                    MikroC.TWI_LIBRARIES)


    set(MikroC.TWI_INCLUDE_DIRS ${MikroC.TWI_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TWI_LIBRARIES})
    
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

