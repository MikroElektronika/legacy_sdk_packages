if (${MCU_NAME} MATCHES "^ATMEGA2560$|^ATMEGA2561$")


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_13 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_13 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM16bit_13/__Lib_PWM16bit_13.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM16bit_13")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_13)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM16bit_13/__Lib_PWM16bit_13.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_A/__Lib_PWM16bit_A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_A")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_A)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_A/__Lib_PWM16bit_A.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA8A$|^ATTINY84A$|^ATMEGA8515$|^ATTINY24$|^ATMEGA32A$|^ATTINY44A$|^ATTINY828$|^ATTINY2313A$|^ATTINY1634$|^ATMEGA32$|^ATMEGA8535$|^ATMEGA16$|^ATTINY24A$|^ATMEGA8$|^ATTINY4313$|^ATTINY2313$|^ATMEGA16A$|^ATTINY84$|^ATTINY44$")


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12/__Lib_PWM16bit_12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_12)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12/__Lib_PWM16bit_12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA162$")


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_AB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_AB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_AB/__Lib_PWM16bit_AB.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_AB")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_AB)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_AB/__Lib_PWM16bit_AB.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_0/__Lib_PWM16bit_0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_0")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_0)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_0/__Lib_PWM16bit_0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_134 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_134 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_134/__Lib_PWM16bit_134.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_134")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_134)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_134/__Lib_PWM16bit_134.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA325P$|^ATMEGA88A$|^ATMEGA325$|^ATMEGA324A$|^AT90PWM2$|^ATMEGA3290$|^ATMEGA169$|^ATMEGA168PA$|^ATMEGA6490P$|^ATMEGA168A$|^ATMEGA329PA$|^ATMEGA325A$|^AT90PWM1$|^ATMEGA164$|^ATMEGA325PA$|^ATMEGA3250$|^ATMEGA168P$|^ATMEGA649P$|^ATMEGA3250A$|^AT90PWM3B$|^ATMEGA324$|^ATMEGA88PA$|^ATMEGA48PB$|^ATMEGA649$|^ATMEGA645P$|^ATMEGA168PB$|^ATMEGA649A$|^ATMEGA644A$|^ATMEGA164PA$|^ATMEGA328P$|^ATMEGA6450A$|^ATMEGA3250P$|^ATMEGA329A$|^ATMEGA645A$|^ATMEGA6490A$|^ATMEGA48A$|^ATTINY88$|^ATMEGA644P$|^ATMEGA6450P$|^ATMEGA645$|^ATMEGA3250PA$|^ATMEGA48P$|^ATMEGA329$|^ATTINY167$|^ATMEGA164A$|^ATMEGA88PB$|^ATTINY87$|^AT90PWM3$|^ATTINY48$|^AT90PWM2B$|^ATMEGA6450$|^ATMEGA164P$|^ATMEGA169P$|^ATMEGA169A$|^ATMEGA6490$|^ATMEGA644$|^ATMEGA88$|^ATMEGA48$|^AT90PWM216$|^ATMEGA168$|^ATMEGA3290A$|^ATMEGA169PA$|^ATMEGA324P$|^ATMEGA329P$|^ATMEGA88P$|^AT90PWM316$|^ATMEGA48PA$|^ATMEGA3290P$|^ATMEGA328$|^ATMEGA644PA$|^ATMEGA324PA$")


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_12_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_12_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12_eio/__Lib_PWM16bit_12_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12_eio")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_12_eio)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12_eio/__Lib_PWM16bit_12_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90USB646$|^AT90CAN64$|^ATMEGA32U6$|^AT90USB1286$|^AT90USB1287$|^ATMEGA16U4$|^AT90CAN128$|^ATMEGA32U4$|^AT90CAN32$|^AT90USB647$")


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_eio/__Lib_PWM16bit_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_eio")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_eio)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_eio/__Lib_PWM16bit_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA64$|^ATMEGA128$|^ATMEGA64A$|^ATMEGA128A$")


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit/__Lib_PWM16bit.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit/__Lib_PWM16bit.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA1284P$|^ATMEGA1284$")


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_AB_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_AB_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_AB_eio/__Lib_PWM16bit_AB_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_AB_eio")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_AB_eio)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_AB_eio/__Lib_PWM16bit_AB_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^AT90USB162$|^ATMEGA8U2$|^ATMEGA1281$|^AT90USB82$|^ATMEGA16U2$|^ATMEGA640$|^ATMEGA1280$|^ATMEGA32U2$")


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_13 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_13 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_13/__Lib_PWM16bit_13.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_13")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_13)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_13/__Lib_PWM16bit_13.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM16bit )
        add_library(__Lib_PWM16bit_12_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM16bit_12_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12_12/__Lib_PWM16bit_12_12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12_12")

    set(MikroC.PWM16bit_DEFINITIONS )


    if (NOT TARGET MikroC.PWM16bit )
        add_library(MikroC.PWM16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM16bit INTERFACE __Lib_PWM16bit_12_12)
    set(MikroC.PWM16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM16bit_12_12/__Lib_PWM16bit_12_12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM16bit  DEFAULT_MSG
                                    MikroC.PWM16bit_LIBRARIES)


    set(MikroC.PWM16bit_INCLUDE_DIRS ${MikroC.PWM16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM16bit_LIBRARIES})
    
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

