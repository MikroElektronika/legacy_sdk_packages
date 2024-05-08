if (${MCU_NAME} MATCHES "^ATMEGA2560$|^ATMEGA2561$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_rwe_ext UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_rwe_ext PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_FLASH_rwe_ext/__Lib_FLASH_rwe_ext.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_FLASH_rwe_ext")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_rwe_ext)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_FLASH_rwe_ext/__Lib_FLASH_rwe_ext.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA128D4$|^ATXMEGA384C3$|^ATXMEGA256A3$|^ATXMEGA256A3U$|^ATXMEGA192C3$|^ATXMEGA192A3$|^ATXMEGA192A3U$|^ATXMEGA256A3BU$|^ATXMEGA256D3$|^ATXMEGA384D3$|^ATXMEGA192D3$|^ATXMEGA128A1$|^ATXMEGA128A1U$|^ATXMEGA128A3$|^ATXMEGA128C3$|^ATXMEGA256A3B$|^ATXMEGA128A4U$|^ATXMEGA128B1$|^ATXMEGA128B3$|^ATXMEGA128D3$|^ATXMEGA256C3$|^ATXMEGA128A3U$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_xmega_ext UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_xmega_ext PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_FLASH_xmega_ext/__Lib_FLASH_xmega_ext.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_FLASH_xmega_ext")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_xmega_ext)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_FLASH_xmega_ext/__Lib_FLASH_xmega_ext.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY26$|^AT90S4433$|^ATTINY814$|^AT90S4434$|^AT90S2343$|^ATTINY104$|^AT90S2313$|^ATMEGA103$|^ATTINY102$|^ATTINY22$|^AT90S8535$|^AT90S2323$|^AT90S4414$|^AT90S8515$|^ATTINY817$|^ATTINY816$|^ATMEGA328PB$|^ATTINY417$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_r UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_r PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_r/__Lib_FLASH_r.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_r")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_r)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_r/__Lib_FLASH_r.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA64$|^ATMEGA64A$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_rwe_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_rwe_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_eio/__Lib_FLASH_rwe_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_eio")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_rwe_eio)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_eio/__Lib_FLASH_rwe_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA16C4$|^ATXMEGA16A4U$|^ATXMEGA32C4$|^ATXMEGA32A4$|^ATXMEGA16A4$|^ATXMEGA32A4U$|^ATXMEGA16D4$|^ATXMEGA32D4$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_xmega UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_xmega PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_xmega/__Lib_FLASH_xmega.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_xmega")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_xmega)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_xmega/__Lib_FLASH_xmega.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA1284P$|^AT90USB1286$|^AT90USB1287$|^ATMEGA1281$|^AT90CAN128$|^ATMEGA1280$|^ATMEGA1284$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_rwe_ext UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_rwe_ext PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_ext/__Lib_FLASH_rwe_ext.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_ext")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_rwe_ext)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_ext/__Lib_FLASH_rwe_ext.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATXMEGA8E5$|^ATXMEGA64A1$|^ATXMEGA64A1U$|^ATXMEGA64B1$|^ATXMEGA64B3$|^ATXMEGA64D3$|^ATXMEGA64A3$|^ATXMEGA64C3$|^ATXMEGA64A3U$|^ATXMEGA32E5$|^ATXMEGA64A4U$|^ATXMEGA16E5$|^ATXMEGA32C3$|^ATXMEGA32D3$|^ATXMEGA64D4$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_xmega_ext UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_xmega_ext PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_xmega_ext/__Lib_FLASH_xmega_ext.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_xmega_ext")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_xmega_ext)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_xmega_ext/__Lib_FLASH_xmega_ext.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY441$|^ATMEGA16M1$|^AT90USB646$|^ATTINY828$|^ATMEGA6450P$|^AT90PWM216$|^ATTINY861$|^ATMEGA3290A$|^ATTINY25$|^ATMEGA16HVB$|^AT90USB162$|^ATMEGA328$|^ATTINY461A$|^ATMEGA169PA$|^ATMEGA16A$|^ATMEGA32U2$|^ATMEGA48$|^ATMEGA325$|^ATMEGA32U6$|^ATTINY24$|^ATMEGA8A$|^AT90PWM2$|^ATMEGA88PB$|^ATMEGA169P$|^ATMEGA324PA$|^ATMEGA168P$|^ATMEGA644P$|^ATTINY2313A$|^ATTINY24A$|^ATMEGA169A$|^ATMEGA32M1$|^ATTINY44$|^AT90USB82$|^ATMEGA325PA$|^ATMEGA32C1$|^ATMEGA32U4$|^ATTINY48$|^ATMEGA323$|^ATTINY167$|^ATMEGA64C1$|^ATMEGA324P$|^ATMEGA88PA$|^ATMEGA165PA$|^ATMEGA3250PA$|^ATTINY13A$|^ATTINY87$|^AT90USB647$|^ATMEGA324PB$|^ATMEGA640$|^ATMEGA649$|^ATMEGA32HVB$|^ATMEGA8U2$|^ATMEGA644A$|^ATMEGA162$|^ATMEGA16HVA$|^ATTINY261A$|^ATMEGA6490A$|^ATMEGA169$|^AT90PWM3B$|^ATTINY2313$|^AT90PWM161$|^ATMEGA6450$|^ATMEGA168A$|^ATMEGA649P$|^ATMEGA3250P$|^ATMEGA48A$|^ATTINY461$|^ATTINY261$|^ATMEGA161$|^ATTINY4313$|^ATMEGA6490$|^ATMEGA324A$|^AT90PWM3$|^ATMEGA644$|^ATTINY84A$|^ATMEGA645P$|^ATMEGA406$|^ATMEGA168$|^ATMEGA644PA$|^ATMEGA164$|^ATMEGA32A$|^ATMEGA64M1$|^ATMEGA325P$|^AT90CAN64$|^ATMEGA88$|^ATMEGA3290P$|^ATMEGA168PA$|^ATTINY85$|^AT90CAN32$|^ATMEGA329A$|^ATTINY44A$|^ATMEGA165$|^ATMEGA165P$|^ATMEGA3250$|^AT90PWM2B$|^ATTINY43U$|^ATTINY88$|^ATTINY84$|^ATTINY13$|^ATMEGA649A$|^ATMEGA8535$|^AT90PWM81$|^ATTINY861A$|^ATMEGA3250A$|^ATMEGA329P$|^ATTINY841$|^ATMEGA8$|^ATMEGA16U2$|^ATMEGA16U4$|^ATMEGA3290$|^ATMEGA88P$|^ATMEGA329$|^ATMEGA168PB$|^ATMEGA645A$|^ATMEGA329PA$|^ATMEGA164A$|^ATMEGA324$|^ATMEGA48PB$|^ATMEGA6490P$|^ATMEGA6450A$|^ATMEGA325A$|^ATMEGA165A$|^ATMEGA328P$|^AT90PWM1$|^ATMEGA8HVA$|^ATMEGA645$|^ATTINY1634$|^ATMEGA48PA$|^ATMEGA8515$|^ATTINY45$|^AT90PWM316$|^ATMEGA164PA$|^ATMEGA88A$|^ATMEGA48P$|^ATMEGA16$|^ATMEGA164P$|^ATMEGA163$|^ATMEGA32$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_rwe UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_rwe PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe/__Lib_FLASH_rwe.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_rwe)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe/__Lib_FLASH_rwe.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA128$|^ATMEGA128A$")


    if (NOT TARGET MikroC.FLASH )
        add_library(__Lib_FLASH_rwe_ext_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_FLASH_rwe_ext_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_ext_eio/__Lib_FLASH_rwe_ext_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_ext_eio")

    set(MikroC.FLASH_DEFINITIONS )


    if (NOT TARGET MikroC.FLASH )
        add_library(MikroC.FLASH INTERFACE)
    endif()

    target_link_libraries(MikroC.FLASH INTERFACE __Lib_FLASH_rwe_ext_eio)
    set(MikroC.FLASH_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_FLASH_rwe_ext_eio/__Lib_FLASH_rwe_ext_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.FLASH  DEFAULT_MSG
                                    MikroC.FLASH_LIBRARIES)


    set(MikroC.FLASH_INCLUDE_DIRS ${MikroC.FLASH_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.FLASH_LIBRARIES})
    
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

