if (${MCU_NAME} MATCHES "^ATMEGA2560$|^ATMEGA2561$")


    if (NOT TARGET MikroC.PWM1 )
        add_library(__Lib_PWM_AB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_AB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_AB/__Lib_PWM_AB.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_AB")

    set(MikroC.PWM1_DEFINITIONS )


    if (NOT TARGET MikroC.PWM1 )
        add_library(MikroC.PWM1 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM1 INTERFACE __Lib_PWM_AB)
    set(MikroC.PWM1_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_PWM_AB/__Lib_PWM_AB.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM1  DEFAULT_MSG
                                    MikroC.PWM1_LIBRARIES)


    set(MikroC.PWM1_INCLUDE_DIRS ${MikroC.PWM1_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM1_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM1 )
        add_library(__Lib_PWM_B0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_B0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_B0/__Lib_PWM_B0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_B0")

    set(MikroC.PWM1_DEFINITIONS )


    if (NOT TARGET MikroC.PWM1 )
        add_library(MikroC.PWM1 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM1 INTERFACE __Lib_PWM_B0)
    set(MikroC.PWM1_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_B0/__Lib_PWM_B0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM1  DEFAULT_MSG
                                    MikroC.PWM1_LIBRARIES)


    set(MikroC.PWM1_INCLUDE_DIRS ${MikroC.PWM1_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM1_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA164A$|^AT90USB1287$|^ATMEGA328PB$|^ATMEGA168A$|^ATMEGA48PA$|^ATMEGA1281$|^AT90USB647$|^ATMEGA328P$|^ATMEGA1284P$|^ATMEGA48$|^ATMEGA164$|^ATMEGA324A$|^AT90USB646$|^ATMEGA644A$|^ATMEGA644$|^ATMEGA324P$|^ATMEGA88A$|^ATMEGA48P$|^ATMEGA32U6$|^ATMEGA328$|^ATMEGA1280$|^ATMEGA644P$|^ATMEGA324PB$|^AT90USB1286$|^ATMEGA168PB$|^ATMEGA88P$|^ATMEGA168$|^ATMEGA640$|^ATMEGA1284$|^ATMEGA324$|^ATMEGA88PA$|^ATMEGA168PA$|^ATMEGA168P$|^ATMEGA164P$|^ATMEGA324PA$|^ATMEGA88PB$|^ATMEGA644PA$|^ATMEGA88$|^ATMEGA48A$|^ATMEGA164PA$|^ATMEGA48PB$")


    if (NOT TARGET MikroC.PWM1 )
        add_library(__Lib_PWM_AB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_AB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB/__Lib_PWM_AB.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB")

    set(MikroC.PWM1_DEFINITIONS )


    if (NOT TARGET MikroC.PWM1 )
        add_library(MikroC.PWM1 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM1 INTERFACE __Lib_PWM_AB)
    set(MikroC.PWM1_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_AB/__Lib_PWM_AB.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM1  DEFAULT_MSG
                                    MikroC.PWM1_LIBRARIES)


    set(MikroC.PWM1_INCLUDE_DIRS ${MikroC.PWM1_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM1_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA3250P$|^ATMEGA6490$|^ATMEGA645$|^ATMEGA325A$|^ATMEGA649P$|^ATMEGA3290P$|^ATMEGA6450P$|^ATMEGA329P$|^ATMEGA3290$|^ATMEGA325PA$|^ATMEGA645P$|^ATMEGA3250A$|^ATMEGA169A$|^ATMEGA3250PA$|^ATMEGA165A$|^ATMEGA6450A$|^ATMEGA3290A$|^ATMEGA325P$|^ATMEGA6450$|^ATMEGA169PA$|^ATMEGA329PA$|^ATMEGA649$|^AT90CAN32$|^ATMEGA6490P$|^ATMEGA649A$|^ATMEGA325$|^AT90CAN64$|^ATMEGA165P$|^ATMEGA329$|^ATMEGA165PA$|^ATMEGA645A$|^ATMEGA165$|^ATMEGA329A$|^ATMEGA169$|^ATMEGA3250$|^ATMEGA6490A$|^AT90CAN128$|^ATMEGA169P$")


    if (NOT TARGET MikroC.PWM1 )
        add_library(__Lib_PWM_A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_A/__Lib_PWM_A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_A")

    set(MikroC.PWM1_DEFINITIONS )


    if (NOT TARGET MikroC.PWM1 )
        add_library(MikroC.PWM1 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM1 INTERFACE __Lib_PWM_A)
    set(MikroC.PWM1_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_A/__Lib_PWM_A.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM1  DEFAULT_MSG
                                    MikroC.PWM1_LIBRARIES)


    set(MikroC.PWM1_INCLUDE_DIRS ${MikroC.PWM1_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM1_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM1 )
        add_library(__Lib_PWM_0_presc UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_0_presc PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0_presc/__Lib_PWM_0_presc.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0_presc")

    set(MikroC.PWM1_DEFINITIONS )


    if (NOT TARGET MikroC.PWM1 )
        add_library(MikroC.PWM1 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM1 INTERFACE __Lib_PWM_0_presc)
    set(MikroC.PWM1_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0_presc/__Lib_PWM_0_presc.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM1  DEFAULT_MSG
                                    MikroC.PWM1_LIBRARIES)


    set(MikroC.PWM1_INCLUDE_DIRS ${MikroC.PWM1_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM1_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATMEGA162$|^ATMEGA16A$|^ATMEGA16$|^ATMEGA32A$|^ATMEGA8535$|^ATMEGA32$")


    if (NOT TARGET MikroC.PWM1 )
        add_library(__Lib_PWM_0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0/__Lib_PWM_0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0")

    set(MikroC.PWM1_DEFINITIONS )


    if (NOT TARGET MikroC.PWM1 )
        add_library(MikroC.PWM1 INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM1 INTERFACE __Lib_PWM_0)
    set(MikroC.PWM1_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_PWM_0/__Lib_PWM_0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM1  DEFAULT_MSG
                                    MikroC.PWM1_LIBRARIES)


    set(MikroC.PWM1_INCLUDE_DIRS ${MikroC.PWM1_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM1_LIBRARIES})
    
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

