if (${MCU_NAME} MATCHES "^ATMEGA2560$|^ATMEGA2561$")


    if (NOT TARGET MikroC.T6963C )
        add_library(__Lib_T6963C UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_T6963C PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_T6963C/__Lib_T6963C.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_T6963C")

    set(MikroC.T6963C_DEFINITIONS )


    if (NOT TARGET MikroC.T6963C )
        add_library(MikroC.T6963C INTERFACE)
    endif()

    target_link_libraries(MikroC.T6963C INTERFACE __Lib_T6963C)
    set(MikroC.T6963C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_T6963C/__Lib_T6963C.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.T6963C  DEFAULT_MSG
                                    MikroC.T6963C_LIBRARIES)


    set(MikroC.T6963C_INCLUDE_DIRS ${MikroC.T6963C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.T6963C_LIBRARIES})
    
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


    if (NOT TARGET MikroC.T6963C )
        add_library(__Lib_T6963C_xmega UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_T6963C_xmega PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_T6963C_xmega/__Lib_T6963C_xmega.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_T6963C_xmega")

    set(MikroC.T6963C_DEFINITIONS )


    if (NOT TARGET MikroC.T6963C )
        add_library(MikroC.T6963C INTERFACE)
    endif()

    target_link_libraries(MikroC.T6963C INTERFACE __Lib_T6963C_xmega)
    set(MikroC.T6963C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_T6963C_xmega/__Lib_T6963C_xmega.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.T6963C  DEFAULT_MSG
                                    MikroC.T6963C_LIBRARIES)


    set(MikroC.T6963C_INCLUDE_DIRS ${MikroC.T6963C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.T6963C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA325P$|^AT90USB646$|^AT90CAN128$|^ATMEGA88A$|^ATMEGA325$|^ATMEGA324A$|^AT90PWM2$|^ATMEGA165P$|^ATMEGA3290$|^ATTINY1634$|^ATMEGA169$|^ATMEGA168PA$|^ATMEGA6490P$|^ATMEGA165$|^ATMEGA168A$|^AT90CAN64$|^ATMEGA329PA$|^ATMEGA8515$|^ATMEGA16HVB$|^ATMEGA325A$|^AT90PWM1$|^ATMEGA32U2$|^ATMEGA164$|^ATMEGA16$|^ATMEGA324PB$|^ATMEGA3250$|^ATMEGA325PA$|^AT90S8535$|^ATMEGA168P$|^ATMEGA8U2$|^AT90USB162$|^AT90CAN32$|^ATMEGA1284P$|^ATMEGA3250A$|^AT90PWM3B$|^ATMEGA649P$|^ATMEGA8$|^ATMEGA161$|^ATMEGA32$|^ATMEGA165A$|^ATMEGA1281$|^ATMEGA324$|^ATMEGA88PA$|^ATMEGA649$|^ATMEGA8535$|^ATMEGA168PB$|^ATMEGA645P$|^ATMEGA16U4$|^ATMEGA406$|^ATMEGA649A$|^ATMEGA128A$|^ATMEGA644A$|^ATMEGA165PA$|^ATMEGA1284$|^ATMEGA64M1$|^ATMEGA64A$|^ATMEGA164PA$|^ATMEGA328P$|^ATMEGA6450A$|^ATMEGA3250P$|^AT90USB647$|^ATMEGA329A$|^ATMEGA32C1$|^ATMEGA645A$|^ATMEGA6490A$|^ATMEGA1280$|^AT90USB1286$|^ATTINY88$|^ATMEGA644P$|^AT90USB1287$|^ATMEGA163$|^ATMEGA6450P$|^ATMEGA64C1$|^ATMEGA32HVB$|^ATMEGA32A$|^ATMEGA645$|^ATMEGA3250PA$|^ATMEGA329$|^ATTINY167$|^ATMEGA164A$|^ATMEGA323$|^ATMEGA88PB$|^ATTINY87$|^AT90PWM3$|^AT90PWM2B$|^ATMEGA6450$|^ATMEGA162$|^ATMEGA164P$|^ATMEGA169P$|^ATMEGA169A$|^ATMEGA644$|^ATMEGA6490$|^ATMEGA88$|^AT90S8515$|^ATMEGA16M1$|^ATMEGA32U4$|^ATMEGA640$|^AT90PWM216$|^AT90PWM161$|^ATMEGA128$|^ATMEGA16U2$|^ATMEGA8A$|^ATMEGA168$|^ATMEGA3290A$|^ATMEGA16A$|^AT90PWM81$|^ATMEGA169PA$|^ATMEGA324P$|^ATMEGA103$|^AT90PWM316$|^ATMEGA329P$|^ATMEGA88P$|^AT90USB82$|^ATTINY861A$|^ATMEGA328PB$|^ATMEGA64$|^ATMEGA32M1$|^ATMEGA32U6$|^ATMEGA328$|^ATMEGA3290P$|^ATMEGA644PA$|^ATMEGA324PA$|^ATTINY861$|^ATTINY828$")


    if (NOT TARGET MikroC.T6963C )
        add_library(__Lib_T6963C UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_T6963C PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_T6963C/__Lib_T6963C.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_T6963C")

    set(MikroC.T6963C_DEFINITIONS )


    if (NOT TARGET MikroC.T6963C )
        add_library(MikroC.T6963C INTERFACE)
    endif()

    target_link_libraries(MikroC.T6963C INTERFACE __Lib_T6963C)
    set(MikroC.T6963C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_T6963C/__Lib_T6963C.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.T6963C  DEFAULT_MSG
                                    MikroC.T6963C_LIBRARIES)


    set(MikroC.T6963C_INCLUDE_DIRS ${MikroC.T6963C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.T6963C_LIBRARIES})
    
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


    if (NOT TARGET MikroC.T6963C )
        add_library(__Lib_T6963C_xmega UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_T6963C_xmega PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_T6963C_xmega/__Lib_T6963C_xmega.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_T6963C_xmega")

    set(MikroC.T6963C_DEFINITIONS )


    if (NOT TARGET MikroC.T6963C )
        add_library(MikroC.T6963C INTERFACE)
    endif()

    target_link_libraries(MikroC.T6963C INTERFACE __Lib_T6963C_xmega)
    set(MikroC.T6963C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_T6963C_xmega/__Lib_T6963C_xmega.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.T6963C  DEFAULT_MSG
                                    MikroC.T6963C_LIBRARIES)


    set(MikroC.T6963C_INCLUDE_DIRS ${MikroC.T6963C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.T6963C_LIBRARIES})
    
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

