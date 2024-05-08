if (${MCU_NAME} MATCHES "^ATXMEGA128D4$|^ATXMEGA384C3$|^ATXMEGA256A3$|^ATXMEGA256A3U$|^ATXMEGA192C3$|^ATXMEGA192A3$|^ATXMEGA192A3U$|^ATXMEGA256A3BU$|^ATXMEGA256D3$|^ATXMEGA384D3$|^ATXMEGA192D3$|^ATXMEGA128A1$|^ATXMEGA128A1U$|^ATXMEGA128A3$|^ATXMEGA128C3$|^ATXMEGA256A3B$|^ATXMEGA128A4U$|^ATXMEGA128B1$|^ATXMEGA128B3$|^ATXMEGA128D3$|^ATXMEGA256C3$|^ATXMEGA128A3U$")


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_xmega UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_xmega PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_EEPROM_xmega/__Lib_EEPROM_xmega.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_EEPROM_xmega")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_xmega)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_EEPROM_xmega/__Lib_EEPROM_xmega.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
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


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_eep UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_eep PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_EEPROM_eep/__Lib_EEPROM_eep.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_EEPROM_eep")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_eep)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_EEPROM_eep/__Lib_EEPROM_eep.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA32A4$|^ATXMEGA16C4$|^ATXMEGA64D4$|^ATXMEGA16A4$|^ATXMEGA16D4$|^ATXMEGA32C3$|^ATXMEGA32E5$|^ATXMEGA64B3$|^ATXMEGA32A4U$|^ATXMEGA64B1$|^ATXMEGA64C3$|^ATXMEGA16E5$|^ATXMEGA64A1$|^ATXMEGA32D3$|^ATXMEGA64D3$|^ATXMEGA64A3$|^ATXMEGA32C4$|^ATXMEGA64A4U$|^ATXMEGA32D4$|^ATXMEGA8E5$|^ATXMEGA64A3U$|^ATXMEGA16A4U$|^ATXMEGA64A1U$")


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_xmega UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_xmega PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_xmega/__Lib_EEPROM_xmega.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_xmega")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_xmega)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_xmega/__Lib_EEPROM_xmega.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA164A$|^ATMEGA32HVB$|^AT90USB1287$|^ATMEGA328PB$|^ATMEGA168A$|^ATMEGA1281$|^ATTINY85$|^ATTINY841$|^AT90USB647$|^ATMEGA16HVB$|^ATMEGA328P$|^ATMEGA1284P$|^ATMEGA164$|^AT90USB162$|^ATMEGA324A$|^ATMEGA16U4$|^AT90USB646$|^ATMEGA644A$|^AT90USB82$|^ATMEGA644$|^ATMEGA324P$|^ATMEGA88A$|^ATMEGA8U2$|^ATMEGA32U6$|^ATMEGA328$|^ATMEGA1280$|^ATMEGA644P$|^ATMEGA324PB$|^ATTINY87$|^AT90USB1286$|^ATMEGA168PB$|^ATMEGA88P$|^ATTINY84A$|^ATTINY861A$|^ATMEGA168$|^ATMEGA640$|^ATMEGA32U4$|^ATTINY84$|^ATMEGA1284$|^ATMEGA324$|^ATMEGA88PA$|^ATMEGA168PA$|^ATMEGA168P$|^ATMEGA164P$|^ATMEGA324PA$|^ATMEGA88PB$|^ATMEGA16U2$|^ATMEGA644PA$|^ATMEGA88$|^ATMEGA164PA$|^ATMEGA406$|^ATMEGA32U2$|^ATTINY167$|^ATTINY861$")


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_eep UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_eep PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eep/__Lib_EEPROM_eep.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eep")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_eep)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eep/__Lib_EEPROM_eep.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA325P$|^AT90CAN128$|^ATMEGA325$|^AT90PWM2$|^ATMEGA3290$|^ATMEGA165P$|^ATMEGA169$|^ATMEGA6490P$|^ATMEGA165$|^ATMEGA329PA$|^AT90CAN64$|^ATMEGA8515$|^ATMEGA325A$|^AT90PWM1$|^ATMEGA16$|^ATMEGA325PA$|^ATMEGA3250$|^AT90S8535$|^AT90CAN32$|^ATMEGA649P$|^ATMEGA3250A$|^AT90PWM3B$|^ATMEGA8$|^ATMEGA161$|^ATMEGA32$|^ATMEGA165A$|^ATMEGA649$|^ATMEGA8535$|^ATMEGA645P$|^ATMEGA649A$|^ATMEGA128A$|^ATMEGA165PA$|^ATMEGA64M1$|^ATMEGA64A$|^ATMEGA6450A$|^ATMEGA3250P$|^ATMEGA329A$|^ATMEGA32C1$|^ATMEGA645A$|^ATMEGA6490A$|^ATMEGA163$|^ATMEGA6450P$|^ATMEGA64C1$|^ATMEGA32A$|^ATMEGA645$|^ATMEGA3250PA$|^ATMEGA329$|^ATMEGA323$|^AT90PWM3$|^AT90PWM2B$|^ATMEGA6450$|^ATMEGA162$|^ATMEGA169P$|^ATMEGA169A$|^ATMEGA6490$|^AT90S8515$|^ATMEGA16M1$|^AT90PWM216$|^AT90PWM161$|^ATMEGA128$|^ATMEGA8A$|^ATMEGA3290A$|^ATMEGA16A$|^AT90PWM81$|^ATMEGA169PA$|^ATMEGA329P$|^ATMEGA103$|^AT90PWM316$|^ATMEGA64$|^ATMEGA32M1$|^ATMEGA3290P$")


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_eew UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_eew PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eew/__Lib_EEPROM_eew.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eew")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_eew)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eew/__Lib_EEPROM_eew.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA48$|^ATMEGA48PB$|^ATTINY48$|^ATTINY24$|^ATTINY45$|^ATMEGA48A$|^ATTINY44A$|^ATMEGA8HVA$|^ATTINY828$|^ATTINY461$|^ATMEGA48PA$|^ATMEGA48P$|^ATTINY2313A$|^ATTINY1634$|^ATTINY461A$|^ATTINY88$|^ATTINY261A$|^ATTINY25$|^ATTINY43U$|^ATTINY24A$|^ATTINY441$|^ATMEGA16HVA$|^ATTINY4313$|^ATTINY261$|^ATTINY2313$|^ATTINY44$")


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_eep_256 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_eep_256 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eep_256/__Lib_EEPROM_eep_256.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eep_256")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_eep_256)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eep_256/__Lib_EEPROM_eep_256.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY13A$|^ATTINY26$|^AT90S2313$|^AT90S4414$|^AT90S2343$|^AT90S4434$|^ATTINY13$|^AT90S2323$|^ATTINY22$|^AT90S4433$")


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_eew_256 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_eew_256 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eew_256/__Lib_EEPROM_eew_256.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eew_256")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_eew_256)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_EEPROM_eew_256/__Lib_EEPROM_eew_256.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
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

