if (${MCU_NAME} MATCHES "^ATMEGA2560$|^ATMEGA2561$")


    if (NOT TARGET MikroC.One_Wire )
        add_library(__Lib_OneWire UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_OneWire PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_OneWire/__Lib_OneWire.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_OneWire")

    set(MikroC.One_Wire_DEFINITIONS )


    if (NOT TARGET MikroC.One_Wire )
        add_library(MikroC.One_Wire INTERFACE)
    endif()

    target_link_libraries(MikroC.One_Wire INTERFACE __Lib_OneWire)
    set(MikroC.One_Wire_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_OneWire/__Lib_OneWire.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.One_Wire  DEFAULT_MSG
                                    MikroC.One_Wire_LIBRARIES)


    set(MikroC.One_Wire_INCLUDE_DIRS ${MikroC.One_Wire_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.One_Wire_LIBRARIES})
    
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


    if (NOT TARGET MikroC.One_Wire )
        add_library(__Lib_OneWire_xmega UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_OneWire_xmega PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_OneWire_xmega/__Lib_OneWire_xmega.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_OneWire_xmega")

    set(MikroC.One_Wire_DEFINITIONS )


    if (NOT TARGET MikroC.One_Wire )
        add_library(MikroC.One_Wire INTERFACE)
    endif()

    target_link_libraries(MikroC.One_Wire INTERFACE __Lib_OneWire_xmega)
    set(MikroC.One_Wire_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_OneWire_xmega/__Lib_OneWire_xmega.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.One_Wire  DEFAULT_MSG
                                    MikroC.One_Wire_LIBRARIES)


    set(MikroC.One_Wire_INCLUDE_DIRS ${MikroC.One_Wire_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.One_Wire_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY441$|^ATTINY814$|^ATMEGA103$|^ATMEGA16M1$|^AT90USB646$|^ATTINY828$|^ATMEGA6450P$|^AT90PWM216$|^ATTINY861$|^ATMEGA3290A$|^ATTINY25$|^ATMEGA16HVB$|^AT90USB162$|^ATMEGA328$|^ATMEGA169PA$|^ATTINY461A$|^ATMEGA16A$|^ATMEGA32U2$|^ATMEGA48$|^ATMEGA325$|^ATMEGA32U6$|^ATTINY24$|^ATMEGA8A$|^AT90PWM2$|^ATMEGA88PB$|^ATMEGA169P$|^ATMEGA324PA$|^ATMEGA168P$|^ATMEGA328PB$|^AT90S4433$|^ATMEGA644P$|^ATTINY2313A$|^ATTINY24A$|^ATMEGA169A$|^ATMEGA32M1$|^ATTINY44$|^AT90USB82$|^AT90S8515$|^ATMEGA325PA$|^ATMEGA32C1$|^AT90S2343$|^ATTINY104$|^ATMEGA32U4$|^ATTINY48$|^ATMEGA1284$|^ATMEGA323$|^ATTINY816$|^ATTINY167$|^ATMEGA64C1$|^ATMEGA324P$|^ATMEGA88PA$|^ATMEGA165PA$|^AT90S4434$|^ATMEGA3250PA$|^ATTINY13A$|^ATTINY87$|^AT90USB647$|^ATMEGA128A$|^ATMEGA324PB$|^ATMEGA64A$|^ATMEGA640$|^ATTINY22$|^ATMEGA1284P$|^ATMEGA649$|^ATMEGA32HVB$|^ATMEGA8U2$|^ATMEGA644A$|^ATMEGA162$|^ATMEGA16HVA$|^ATTINY261A$|^ATMEGA6490A$|^ATMEGA169$|^AT90PWM3B$|^AT90S4414$|^ATTINY2313$|^AT90PWM161$|^ATMEGA6450$|^ATMEGA168A$|^ATMEGA649P$|^ATMEGA3250P$|^ATMEGA48A$|^AT90S2313$|^ATTINY261$|^ATTINY461$|^ATMEGA161$|^ATTINY4313$|^ATMEGA6490$|^ATMEGA324A$|^AT90PWM3$|^ATMEGA644$|^ATTINY84A$|^ATMEGA128$|^ATMEGA645P$|^ATMEGA406$|^ATMEGA168$|^ATMEGA644PA$|^ATMEGA164$|^ATMEGA32A$|^ATMEGA64M1$|^ATTINY817$|^ATMEGA325P$|^AT90CAN64$|^ATMEGA88$|^ATMEGA3290P$|^ATMEGA168PA$|^ATTINY85$|^AT90CAN32$|^ATMEGA329A$|^ATTINY44A$|^ATMEGA165$|^ATMEGA1280$|^ATMEGA165P$|^ATMEGA3250$|^AT90CAN128$|^AT90PWM2B$|^ATTINY43U$|^ATTINY88$|^ATTINY13$|^ATTINY84$|^ATMEGA649A$|^ATMEGA8535$|^AT90PWM81$|^ATTINY861A$|^ATMEGA3250A$|^AT90S8535$|^ATMEGA329P$|^ATTINY841$|^ATMEGA8$|^ATMEGA16U2$|^ATMEGA1281$|^ATMEGA16U4$|^ATMEGA3290$|^ATMEGA88P$|^ATMEGA329$|^ATMEGA168PB$|^ATMEGA645A$|^ATMEGA329PA$|^ATTINY417$|^ATMEGA164A$|^ATMEGA324$|^ATMEGA48PB$|^ATMEGA6490P$|^ATTINY102$|^ATMEGA6450A$|^AT90USB1287$|^ATMEGA325A$|^ATMEGA165A$|^ATMEGA328P$|^ATMEGA64$|^AT90PWM1$|^ATMEGA8HVA$|^ATMEGA645$|^ATTINY1634$|^ATMEGA48PA$|^ATMEGA8515$|^AT90USB1286$|^AT90PWM316$|^ATTINY45$|^ATMEGA164PA$|^ATMEGA88A$|^ATMEGA48P$|^ATMEGA16$|^ATTINY26$|^AT90S2323$|^ATMEGA164P$|^ATMEGA163$|^ATMEGA32$")


    if (NOT TARGET MikroC.One_Wire )
        add_library(__Lib_OneWire UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_OneWire PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_OneWire/__Lib_OneWire.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_OneWire")

    set(MikroC.One_Wire_DEFINITIONS )


    if (NOT TARGET MikroC.One_Wire )
        add_library(MikroC.One_Wire INTERFACE)
    endif()

    target_link_libraries(MikroC.One_Wire INTERFACE __Lib_OneWire)
    set(MikroC.One_Wire_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_OneWire/__Lib_OneWire.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.One_Wire  DEFAULT_MSG
                                    MikroC.One_Wire_LIBRARIES)


    set(MikroC.One_Wire_INCLUDE_DIRS ${MikroC.One_Wire_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.One_Wire_LIBRARIES})
    
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


    if (NOT TARGET MikroC.One_Wire )
        add_library(__Lib_OneWire_xmega UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_OneWire_xmega PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_OneWire_xmega/__Lib_OneWire_xmega.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_OneWire_xmega")

    set(MikroC.One_Wire_DEFINITIONS )


    if (NOT TARGET MikroC.One_Wire )
        add_library(MikroC.One_Wire INTERFACE)
    endif()

    target_link_libraries(MikroC.One_Wire INTERFACE __Lib_OneWire_xmega)
    set(MikroC.One_Wire_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_OneWire_xmega/__Lib_OneWire_xmega.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.One_Wire  DEFAULT_MSG
                                    MikroC.One_Wire_LIBRARIES)


    set(MikroC.One_Wire_INCLUDE_DIRS ${MikroC.One_Wire_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.One_Wire_LIBRARIES})
    
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

