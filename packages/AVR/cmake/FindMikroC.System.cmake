if (${MCU_NAME} MATCHES "^ATXMEGA128D4$|^ATXMEGA384C3$|^ATXMEGA256A3$|^ATXMEGA256A3U$|^ATXMEGA192C3$|^ATXMEGA192A3$|^ATXMEGA192A3U$|^ATXMEGA256A3BU$|^ATXMEGA256D3$|^ATXMEGA384D3$|^ATXMEGA192D3$|^ATXMEGA128A1$|^ATXMEGA128A1U$|^ATMEGA2561$|^ATXMEGA128A3$|^ATMEGA2560$|^ATXMEGA128C3$|^ATXMEGA128A4U$|^ATXMEGA128B1$|^ATXMEGA256A3B$|^ATXMEGA128B3$|^ATXMEGA128D3$|^ATXMEGA256C3$|^ATXMEGA128A3U$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_System_000")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_Math
__Lib_MathDouble
__Lib_System)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_System_000/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY167$|^AT90USB162$|^ATMEGA8U2$|^ATTINY87$|^AT90USB82$|^ATTINY1634$|^ATMEGA16U2$|^ATMEGA32U2$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math_NoHwMul UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math_NoHwMul PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_003/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_003")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_003/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_003")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_003/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_003")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_Math_NoHwMul
__Lib_System
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_003/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY48$|^ATTINY13$|^ATTINY84A$|^ATTINY24$|^ATTINY45$|^ATTINY44A$|^ATTINY828$|^ATTINY13A$|^ATTINY861$|^ATTINY461$|^ATTINY2313A$|^ATTINY461A$|^ATTINY88$|^ATTINY261A$|^ATTINY841$|^ATTINY25$|^ATTINY861A$|^ATTINY43U$|^ATTINY24A$|^ATTINY441$|^ATTINY85$|^ATTINY4313$|^ATTINY261$|^ATTINY2313$|^ATTINY84$|^ATTINY44$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System_nocall UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System_nocall PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math_NoHwMul UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math_NoHwMul PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_000")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_System_nocall
__Lib_Math_NoHwMul
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_000/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA48$|^ATMEGA168PA$|^ATMEGA88PA$|^ATMEGA8A$|^ATMEGA8515$|^ATMEGA48A$|^AT90PWM161$|^ATMEGA88P$|^ATMEGA8HVA$|^ATMEGA328$|^ATMEGA48PA$|^ATMEGA88A$|^ATMEGA64M1$|^ATMEGA48P$|^ATMEGA16M1$|^ATMEGA64C1$|^ATMEGA32M1$|^ATMEGA88$|^ATMEGA8535$|^ATMEGA328P$|^ATMEGA168A$|^ATMEGA8$|^AT90PWM1$|^ATMEGA32C1$|^AT90PWM81$|^ATMEGA16HVA$|^ATMEGA168PB$|^ATMEGA168P$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System_nocall UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System_nocall PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_005/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_005")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_005/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_005")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_005/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_005")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_System_nocall
__Lib_Math
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_005/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY26$|^ATTINY104$|^AT90S4414$|^AT90S2313$|^AT90S2343$|^AT90S8535$|^ATMEGA328PB$|^AT90S4434$|^AT90S8515$|^AT90S2323$|^ATTINY22$|^AT90S4433$|^ATTINY102$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System_nocall UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System_nocall PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_001/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_001")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math_NoMOVW UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math_NoMOVW PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_001/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_001")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_001/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_001")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_System_nocall
__Lib_Math_NoMOVW
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_001/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_004/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_004")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math_NoMOVW UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math_NoMOVW PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_004/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_004")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_004/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_004")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_System
__Lib_Math_NoMOVW
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_004/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA325P$|^AT90USB646$|^AT90CAN128$|^ATXMEGA32A4U$|^ATXMEGA64C3$|^ATMEGA325$|^ATMEGA324A$|^AT90PWM2$|^ATMEGA165P$|^ATMEGA3290$|^ATTINY814$|^ATMEGA169$|^ATTINY816$|^ATMEGA6490P$|^ATXMEGA64A4U$|^ATMEGA165$|^ATTINY817$|^AT90CAN64$|^ATMEGA329PA$|^ATMEGA16HVB$|^ATMEGA325A$|^ATMEGA164$|^ATXMEGA64B1$|^ATMEGA16$|^ATMEGA325PA$|^ATMEGA324PB$|^ATMEGA3250$|^AT90CAN32$|^ATMEGA649P$|^ATMEGA1284P$|^AT90PWM3B$|^ATMEGA3250A$|^ATXMEGA32C4$|^ATXMEGA32A4$|^ATMEGA161$|^ATMEGA32$|^ATMEGA165A$|^ATMEGA1281$|^ATMEGA324$|^ATMEGA48PB$|^ATXMEGA32E5$|^ATMEGA649$|^ATXMEGA8E5$|^ATMEGA645P$|^ATMEGA406$|^ATMEGA16U4$|^ATMEGA649A$|^ATMEGA128A$|^ATMEGA644A$|^ATXMEGA32C3$|^ATXMEGA64A3U$|^ATMEGA165PA$|^ATMEGA1284$|^ATMEGA64A$|^ATXMEGA64D4$|^ATMEGA164PA$|^ATMEGA6450A$|^ATMEGA3250P$|^AT90USB647$|^ATMEGA329A$|^ATMEGA6490A$|^ATMEGA645A$|^ATXMEGA16D4$|^ATMEGA1280$|^AT90USB1286$|^ATXMEGA64A1$|^ATXMEGA64A1U$|^ATXMEGA16A4U$|^ATMEGA644P$|^AT90USB1287$|^ATMEGA6450P$|^ATMEGA163$|^ATXMEGA32D3$|^ATXMEGA16A4$|^ATMEGA32HVB$|^ATMEGA32A$|^ATMEGA645$|^ATMEGA3250PA$|^ATMEGA329$|^ATXMEGA64D3$|^ATMEGA323$|^ATMEGA88PB$|^ATMEGA164A$|^AT90PWM3$|^ATMEGA6450$|^AT90PWM2B$|^ATMEGA162$|^ATMEGA164P$|^ATMEGA169P$|^ATTINY417$|^ATMEGA169A$|^ATMEGA6490$|^ATMEGA644$|^ATMEGA32U4$|^ATMEGA640$|^AT90PWM216$|^ATMEGA128$|^ATXMEGA64A3$|^ATMEGA168$|^ATMEGA3290A$|^ATMEGA16A$|^ATMEGA169PA$|^ATMEGA324P$|^ATMEGA329P$|^AT90PWM316$|^ATXMEGA32D4$|^ATMEGA64$|^ATXMEGA16E5$|^ATMEGA32U6$|^ATXMEGA64B3$|^ATXMEGA16C4$|^ATMEGA644PA$|^ATMEGA3290P$|^ATMEGA324PA$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_002/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_002")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_002/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_002")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_002/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_002")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_System
__Lib_Math
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_System_002/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

