if (${MCU_NAME} MATCHES "^CEC1302$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_I2C/__Lib_I2C.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_I2C")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_I2C/__Lib_I2C.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^CEC1702$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_1702 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_1702 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_I2C_1702/__Lib_I2C_1702.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_I2C_1702")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_1702)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_I2C_1702/__Lib_I2C_1702.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F732RE$|^STM32F722IC$|^STM32F722VC$|^STM32F722VE$|^STM32F722RC$|^STM32F723VE$|^STM32F722RE$|^STM32F732ZE$|^STM32F723IC$|^STM32F722IE$|^STM32F722ZE$|^STM32F723IE$|^STM32F723ZC$|^STM32F733VE$|^STM32F733ZE$|^STM32F723ZE$|^STM32F733IE$|^STM32F722ZC$|^STM32F732IE$|^STM32F732VE$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_123/__Lib_I2C_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_123/__Lib_I2C_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32H750IB$|^STM32H743AI$|^STM32H753XI$|^STM32H753AI$|^STM32H743ZI$|^STM32H753BI$|^STM32H753II$|^STM32H750XB$|^STM32H743VI$|^STM32H753VI$|^STM32H743XI$|^STM32H750VB$|^STM32H743BI$|^STM32H743II$|^STM32H753ZI$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32H7xx_1234 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32H7xx_1234 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_32H7xx_1234/__Lib_I2C_32H7xx_1234.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_32H7xx_1234")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32H7xx_1234)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_32H7xx_1234/__Lib_I2C_32H7xx_1234.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F746ZE$|^STM32F767NI$|^STM32F746ZG$|^STM32F767II$|^STM32F756VG$|^STM32F767VG$|^STM32F769II$|^STM32F769NG$|^STM32F779AI$|^STM32F777ZI$|^STM32F745VG$|^STM32F746VG$|^STM32F767NG$|^STM32F765VG$|^STM32F746BE$|^STM32F746NG$|^STM32F765II$|^STM32F767IG$|^STM32F769IG$|^STM32F756ZG$|^STM32F745IG$|^STM32F769BI$|^STM32F777VI$|^STM32F746NE$|^STM32F769BG$|^STM32F779NI$|^STM32F746IG$|^STM32F745ZG$|^STM32F765NG$|^STM32F779II$|^STM32F745VE$|^STM32F767BI$|^STM32F756BG$|^STM32F767ZG$|^STM32F767ZI$|^STM32F746BG$|^STM32F765ZI$|^STM32F756NG$|^STM32F765BG$|^STM32F769NI$|^STM32F765VI$|^STM32F756IG$|^STM32F765IG$|^STM32F745IE$|^STM32F746VE$|^STM32F767VI$|^STM32F777II$|^STM32F777BI$|^STM32F777NI$|^STM32F779BI$|^STM32F765BI$|^STM32F746IE$|^STM32F765NI$|^STM32F765ZG$|^STM32F767BG$|^STM32F769AI$|^STM32F745ZE$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_1234 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_1234 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_1234/__Lib_I2C_1234.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_1234")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_1234)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_I2C_1234/__Lib_I2C_1234.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L021F4$|^STM32L031G6$|^STM32L041G6$|^STM32L011D3$|^STM32L011K3$|^STM32L031C6$|^STM32L041C6$|^STM32L021D4$|^STM32L031E4$|^STM32L031C4$|^STM32L052K6$|^STM32L031F4$|^STM32L011F4$|^STM32L031E6$|^STM32L031G4$|^STM32L011D4$|^STM32L051K8$|^STM32L011E4$|^STM32L011G3$|^STM32L031K4$|^STM32L011E3$|^STM32L041K6$|^STM32L052K8$|^STM32L041F6$|^STM32L011F3$|^STM32L011K4$|^STM32L021K4$|^STM32L031K6$|^STM32L021G4$|^STM32L031F6$|^STM32L011G4$|^STM32L041E6$|^STM32L051K6$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32L0x_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32L0x_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_1/__Lib_I2C_32L0x_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_1")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32L0x_1)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_1/__Lib_I2C_32L0x_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32G070CB$|^STM32G071G8$|^STM32G071GB$|^STM32G071CB$|^STM32G071KB$|^STM32G081RB$|^STM32G070KB$|^STM32G070RB$|^STM32G071EB$|^STM32G071RB$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_G0xx_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_G0xx_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_G0xx_12/__Lib_I2C_G0xx_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_G0xx_12")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_G0xx_12)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_G0xx_12/__Lib_I2C_G0xx_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L071KZ$|^STM32L071K8$|^STM32L072KZ$|^STM32L081KZ$|^STM32L082KZ$|^STM32L071KB$|^STM32L072KB$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32L0x_13 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32L0x_13 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_13/__Lib_I2C_32L0x_13.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_13")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32L0x_13)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_13/__Lib_I2C_32L0x_13.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L051C8$|^STM32L052R8$|^STM32L063R8$|^STM32L051T8$|^STM32L051R8$|^STM32L052T8$|^STM32L051T6$|^STM32L051C6$|^STM32L052T6$|^STM32L051R6$|^STM32L052C6$|^STM32L053C8$|^STM32L052R6$|^STM32L063C8$|^STM32L062K8$|^STM32L053R8$|^STM32L053R6$|^STM32L053C6$|^STM32L052C8$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32L0x_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32L0x_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_12/__Lib_I2C_32L0x_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_12")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32L0x_12)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_12/__Lib_I2C_32L0x_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F042K4$|^STM32F042K6$|^STM32F042G6$|^STM32F031F6$|^STM32F042F6$|^STM32F030K6$|^STM32F042T6$|^STM32F038C6$|^STM32F050K6$|^STM32F031K6$|^STM32F050C4$|^STM32F031G4$|^STM32F051C6$|^STM32F050C6$|^STM32F051C4$|^STM32F050K4$|^STM32F050G6$|^STM32F042C4$|^STM32F030C6$|^STM32F051K8$|^STM32F042F4$|^STM32F051K4$|^STM32F070F6$|^STM32F051T8$|^STM32F031K4$|^STM32F038G6$|^STM32F042G4$|^STM32F030F4$|^STM32F048C6$|^STM32F031F4$|^STM32F038F6$|^STM32F031C6$|^STM32F038K6$|^STM32F050F4$|^STM32F050F6$|^STM32F050G4$|^STM32F051K6$|^STM32F031G6$|^STM32F042C6$|^STM32F051R6$|^STM32F048G6$|^STM32F038E6$|^STM32F048T6$|^STM32F031E6$|^STM32F070C6$|^STM32F031C4$|^STM32F051R4$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_1/__Lib_I2C_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_1")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_1)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_1/__Lib_I2C_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F091CB$|^STM32F091RB$|^STM32F071V8$|^STM32F058C8$|^STM32F091VB$|^STM32F072RB$|^STM32F072V8$|^STM32F070CB$|^STM32F072CB$|^STM32F078CB$|^STM32F078RB$|^STM32F070RB$|^STM32F071RB$|^STM32F091CC$|^STM32F098CC$|^STM32F072R8$|^STM32F058R8$|^STM32F071C8$|^STM32F098VC$|^STM32F030R8$|^STM32F051C8$|^STM32F071VB$|^STM32F030C8$|^STM32F071CB$|^STM32F072VB$|^STM32F030RC$|^STM32F098RC$|^STM32F058T8$|^STM32F091RC$|^STM32F072C8$|^STM32F030CC$|^STM32F078VB$|^STM32F091VC$|^STM32F051R8$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_12/__Lib_I2C_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_12")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_12)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_12/__Lib_I2C_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L072VB$|^STM32L083RB$|^STM32L083RZ$|^STM32L073V8$|^STM32L083VB$|^STM32L073CB$|^STM32L082CZ$|^STM32L073VZ$|^STM32L071RB$|^STM32L072CZ$|^STM32L071C8$|^STM32L073CZ$|^STM32L083CB$|^STM32L071VZ$|^STM32L071CZ$|^STM32L083VZ$|^STM32L071CB$|^STM32L073RZ$|^STM32L071VB$|^STM32L083CZ$|^STM32L072CB$|^STM32L072RB$|^STM32L072V8$|^STM32L072RZ$|^STM32L073VB$|^STM32L083V8$|^STM32L071RZ$|^STM32L073RB$|^STM32L072VZ$|^STM32L071V8$|^STM32L081CZ$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32L0x_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32L0x_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_123/__Lib_I2C_32L0x_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32L0x_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_I2C_32L0x_123/__Lib_I2C_32L0x_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F302C6$|^STM32F302K8$|^STM32F302R6$|^STM32F303VD$|^STM32F303ZE$|^STM32F303ZD$|^STM32F303RD$|^STM32F303RE$|^STM32F302ZE$|^STM32F302R8$|^STM32F302VD$|^STM32F398VE$|^STM32F302RE$|^STM32F302ZD$|^STM32F303VE$|^STM32F302VE$|^STM32F302C8$|^STM32F302RD$|^STM32F302K6$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_123_3XX UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_123_3XX PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_123_3XX/__Lib_I2C_123_3XX.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_123_3XX")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_123_3XX)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_123_3XX/__Lib_I2C_123_3XX.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F479IG$|^STM32F469AE$|^STM32F469NE$|^STM32F469NI$|^STM32F469ZG$|^STM32F469ZE$|^STM32F479BI$|^STM32F479ZI$|^STM32F469BE$|^STM32F479VI$|^STM32F469AI$|^STM32F469ZI$|^STM32F479AG$|^STM32F469BG$|^STM32F479BG$|^STM32F469IE$|^STM32F479NG$|^STM32F469VG$|^STM32F469AG$|^STM32F479ZG$|^STM32F469II$|^STM32F469NG$|^STM32F469VE$|^STM32F469IG$|^STM32F469VI$|^STM32F469BI$|^STM32F479VG$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32F4x9_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32F4x9_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F4x9_123/__Lib_I2C_32F4x9_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F4x9_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32F4x9_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F4x9_123/__Lib_I2C_32F4x9_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F318K8$|^STM32F318C8$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32F318_123_3XX UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32F318_123_3XX PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F318_123_3XX/__Lib_I2C_32F318_123_3XX.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F318_123_3XX")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32F318_123_3XX)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F318_123_3XX/__Lib_I2C_32F318_123_3XX.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F303R6$|^STM32F334C4$|^STM32F334K6$|^STM32F303C8$|^STM32F303R8$|^STM32F303K6$|^STM32F334K8$|^STM32F328C8$|^STM32F303K8$|^STM32F303C6$|^STM32F334K4$|^STM32F334R8$|^STM32F334C6$|^STM32F334R6$|^STM32F334C8$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_1_3XX UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_1_3XX PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_1_3XX/__Lib_I2C_1_3XX.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_1_3XX")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_1_3XX)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_1_3XX/__Lib_I2C_1_3XX.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F407IE$|^STM32F427II$|^STM32F429VE$|^STM32F407IG$|^STM32F427AG$|^STM32F429ZG$|^STM32F439BG$|^STM32F429BE$|^STM32F439VI$|^STM32F427AI$|^STM32F407VE$|^STM32F439AI$|^STM32F429VG$|^STM32F439II$|^STM32F439ZG$|^STM32F407ZE$|^STM32F429ZE$|^STM32F415RG$|^STM32F429AI$|^STM32F417IG$|^STM32F439BI$|^STM32F415OG$|^STM32F427ZI$|^STM32F417VG$|^STM32F407VG$|^STM32F437VI$|^STM32F479AI$|^STM32F429IG$|^STM32F429VI$|^STM32F437ZI$|^STM32F439ZI$|^STM32F415ZG$|^STM32F437AI$|^STM32F405ZG$|^STM32F429ZI$|^STM32F415VG$|^STM32F429IE$|^STM32F479NI$|^STM32F427VI$|^STM32F417ZE$|^STM32F439VG$|^STM32F429BI$|^STM32F429II$|^STM32F429NE$|^STM32F429NI$|^STM32F437II$|^STM32F407ZG$|^STM32F479II$|^STM32F427VG$|^STM32F429NG$|^STM32F437IG$|^STM32F405RG$|^STM32F439NI$|^STM32F427IG$|^STM32F405VG$|^STM32F417IE$|^STM32F439IG$|^STM32F417ZG$|^STM32F437ZG$|^STM32F427ZG$|^STM32F437VG$|^STM32F417VE$|^STM32F439NG$|^STM32F429AG$|^STM32F429BG$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_123/__Lib_I2C_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_123/__Lib_I2C_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L4A6AG$|^STM32L451VE$|^STM32L451VC$|^STM32L4S9ZI$|^STM32L4A6VG$|^STM32L451CE$|^STM32L4R5VI$|^STM32L4S7AI$|^STM32L496RE$|^STM32L4R7AI$|^STM32L4R9AG$|^STM32L4S5ZI$|^STM32L4R5QI$|^STM32L4S7ZI$|^STM32L4A6ZG$|^STM32L4R9VI$|^STM32L4R5QG$|^STM32L4R5ZI$|^STM32L4R9ZI$|^STM32L4A6RG$|^STM32L4R9VG$|^STM32L496QG$|^STM32L496ZE$|^STM32L496VG$|^STM32L462RE$|^STM32L4S5VI$|^STM32L4R5VG$|^STM32L4R5AI$|^STM32L4R7VI$|^STM32L4R5ZG$|^STM32L496QE$|^STM32L496VE$|^STM32L4S7VI$|^STM32L452CC$|^STM32L4S9VI$|^STM32L496ZG$|^STM32L452VC$|^STM32L4R9ZG$|^STM32L462CE$|^STM32L452CE$|^STM32L452VE$|^STM32L4A6QG$|^STM32L496RG$|^STM32L451RC$|^STM32L4R7ZI$|^STM32L4R9AI$|^STM32L452RC$|^STM32L4S5AI$|^STM32L496AE$|^STM32L4S9AI$|^STM32L452RE$|^STM32L451RE$|^STM32L462VE$|^STM32L4S5QI$|^STM32L4R5AG$|^STM32L451CC$|^STM32L496AG$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32L.+_1234 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32L.+_1234 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_1234/__Lib_I2C_32L.+_1234.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_1234")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32L.+_1234)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_1234/__Lib_I2C_32L.+_1234.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L432KC$|^STM32L442KC$|^STM32L431KB$|^STM32L432KB$|^STM32L431KC$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32L.+_13 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32L.+_13 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_13/__Lib_I2C_32L.+_13.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_13")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32L.+_13)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_13/__Lib_I2C_32L.+_13.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F446RE$|^STM32F446VC$|^STM32F446RC$|^STM32F446ZE$|^STM32F446VE$|^STM32F446MC$|^STM32F446ME$|^STM32F446ZC$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32F44x_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32F44x_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F44x_123/__Lib_I2C_32F44x_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F44x_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32F44x_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F44x_123/__Lib_I2C_32F44x_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F410T8$|^STM32F410TB$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_1/__Lib_I2C_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_1")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_1)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_1/__Lib_I2C_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F301C6$|^STM32F301R8$|^STM32F301K6$|^STM32F301R6$|^STM32F301K8$|^STM32F301C8$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32F30x_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32F30x_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F30x_12/__Lib_I2C_32F30x_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F30x_12")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32F30x_12)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F30x_12/__Lib_I2C_32F30x_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F373C8$|^STM32F303VB$|^STM32F302RB$|^STM32F373R8$|^STM32F378RC$|^STM32F383CC$|^STM32F302RC$|^STM32F358VC$|^STM32F313VC$|^STM32F373RB$|^STM32F303CB$|^STM32F303RC$|^STM32F373CB$|^STM32F303VC$|^STM32F303CC$|^STM32F373VB$|^STM32F373VC$|^STM32F302CB$|^STM32F373V8$|^STM32F373CC$|^STM32F303RB$|^STM32F302VB$|^STM32F383VC$|^STM32F378CC$|^STM32F358RC$|^STM32F373RC$|^STM32F313RC$|^STM32F302CC$|^STM32F313CC$|^STM32F378VC$|^STM32F383RC$|^STM32F358CC$|^STM32F302VC$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_12_3XX UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_12_3XX PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_12_3XX/__Lib_I2C_12_3XX.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_12_3XX")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_12_3XX)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_12_3XX/__Lib_I2C_12_3XX.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L475VE$|^STM32L476ZG$|^STM32L476JG$|^STM32L476ZE$|^STM32L475VG$|^STM32L471VG$|^STM32L486RG$|^STM32L476QG$|^STM32L476VG$|^STM32L476MG$|^STM32L476ME$|^STM32L471QG$|^STM32L471RE$|^STM32L476JE$|^STM32L471VE$|^STM32L476QE$|^STM32L475RC$|^STM32L476VC$|^STM32L471ZE$|^STM32L475RE$|^STM32L475VC$|^STM32L471QE$|^STM32L475RG$|^STM32L486ZG$|^STM32L476RE$|^STM32L486QG$|^STM32L471ZG$|^STM32L486JG$|^STM32L476VE$|^STM32L486VG$|^STM32L471RG$|^STM32L476RC$|^STM32L476RG$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32L.+_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32L.+_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_123/__Lib_I2C_32L.+_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32L.+_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32Lxxx_123/__Lib_I2C_32L.+_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F405OG$|^STM32F410R8$|^STM32F405OE$|^STM32F410RB$|^STM32F410CB$|^STM32F410C8$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_12/__Lib_I2C_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_12")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_12)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_12/__Lib_I2C_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L431VC$|^STM32L443VC$|^STM32L433RC$|^STM32L443RC$|^STM32L431RC$|^STM32L433CC$|^STM32L443CC$|^STM32L433VC$|^STM32L431CC$|^STM32L431CB$|^STM32L433RB$|^STM32L433CB$|^STM32L431RB$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32L43x_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32L43x_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32L43x_123/__Lib_I2C_32L43x_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32L43x_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32L43x_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32L43x_123/__Lib_I2C_32L43x_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F401RE$|^STM32F413RH$|^STM32F413VH$|^STM32F412RE$|^STM32F401VC$|^STM32F411CE$|^STM32F401VB$|^STM32F401CC$|^STM32F423MH$|^STM32F411VE$|^STM32F413RG$|^STM32F401CB$|^STM32F401RB$|^STM32F412ZE$|^STM32F412VE$|^STM32F411RE$|^STM32F413CH$|^STM32F423RH$|^STM32F401CD$|^STM32F401VE$|^STM32F413VG$|^STM32F413MG$|^STM32F412RG$|^STM32F413MH$|^STM32F423ZH$|^STM32F412VG$|^STM32F401CE$|^STM32F411VC$|^STM32F401VD$|^STM32F412CE$|^STM32F401RC$|^STM32F412CG$|^STM32F413CG$|^STM32F413ZG$|^STM32F411RC$|^STM32F411CC$|^STM32F423VH$|^STM32F401RD$|^STM32F412ZG$|^STM32F413ZH$|^STM32F423CH$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_32F4x1_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_32F4x1_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F4x1_123/__Lib_I2C_32F4x1_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F4x1_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_32F4x1_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_I2C_32F4x1_123/__Lib_I2C_32F4x1_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F215VG$|^STM32F205RG$|^STM32F205VC$|^STM32F205ZG$|^STM32F205VE$|^STM32F215ZG$|^STM32F205ZC$|^STM32F205ZE$|^STM32F215RE$|^STM32F205RF$|^STM32F205VG$|^STM32F215VE$|^STM32F205VF$|^STM32F205ZF$|^STM32F215ZE$|^STM32F205VB$|^STM32F215RG$|^STM32F205RC$|^STM32F205RB$|^STM32F205RE$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_123/__Lib_I2C_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_123/__Lib_I2C_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F102C6$|^STM32F103C6$|^STM32F103TB$|^STM32F101T8$|^STM32F103C4$|^STM32F101C6$|^STM32F100C6$|^STM32F100R6$|^STM32F101R6$|^STM32F101T4$|^STM32F101R4$|^STM32F101T6$|^STM32F103T4$|^STM32F102R4$|^STM32F101C4$|^STM32F100R4$|^STM32F103T8$|^STM32F102R6$|^STM32F103R6$|^STM32F103R4$|^STM32F103T6$|^STM32F101TB$|^STM32F100C4$|^STM32F102C4$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_1/__Lib_I2C_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_1")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_1)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_1/__Lib_I2C_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F103C8$|^STM32F103ZE$|^STM32L151UC$|^STM32L162ZE$|^STM32L151RB_A$|^STM32L151C6$|^STM32L100C6_A$|^STM32F101RD$|^STM32L151QC$|^STM32F101VD$|^STM32L151CB_A$|^STM32F103RE$|^STM32F100RB$|^STM32L151V8_A$|^STM32F100VC$|^STM32F103ZC$|^STM32F103VG$|^STM32L152R6$|^STM32F103RF$|^STM32L100RC$|^STM32L152C6_A$|^STM32L151RB$|^STM32F103RC$|^STM32F101ZF$|^STM32L151VC$|^STM32F207IG$|^STM32F217VE$|^STM32F101ZG$|^STM32L151VB_A$|^STM32F102CB$|^STM32L152VC$|^STM32F100RE$|^STM32F101V8$|^STM32L152C8$|^STM32F207IE$|^STM32F101RB$|^STM32L152QE$|^STM32F103RB$|^STM32F101VC$|^STM32F105VB$|^STM32L151R8$|^STM32L151VD$|^STM32L162RC_A$|^STM32F100VB$|^STM32L162QD$|^STM32F102C8$|^STM32L152V8_A$|^STM32F105RB$|^STM32L151ZD$|^STM32L152C8_A$|^STM32F100VE$|^STM32L151CC$|^STM32L100R8_A$|^STM32F100RC$|^STM32L152VC_A$|^STM32F101RE$|^STM32L100C6$|^STM32L152RC$|^STM32F100ZC$|^STM32L152QC$|^STM32F101ZC$|^STM32L152RD$|^STM32F103RG$|^STM32L151CB$|^STM32L152RC_A$|^STM32F103RD$|^STM32L152R8_A$|^STM32L152RB_A$|^STM32L100R8$|^STM32F101C8$|^STM32L162VC$|^STM32F100VD$|^STM32F103VF$|^STM32L152ZD$|^STM32F103V8$|^STM32F100V8$|^STM32L151C8$|^STM32F100C8$|^STM32F207VG$|^STM32L151RE$|^STM32L151QD$|^STM32L151ZE$|^STM32L151VC_A$|^STM32F103ZD$|^STM32L152ZE$|^STM32L151C8_A$|^STM32L152CB$|^STM32L152R8$|^STM32L151VE$|^STM32F107VC$|^STM32F207ZF$|^STM32L151RC_A$|^STM32L162RC$|^STM32F103ZG$|^STM32L151R6$|^STM32L152RE$|^STM32L151R6_A$|^STM32L152VB$|^STM32F100CB$|^STM32F105R8$|^STM32F103CB$|^STM32F103VD$|^STM32F101VF$|^STM32F101VG$|^STM32L151QE$|^STM32F217IE$|^STM32F105RC$|^STM32F107VB$|^STM32F217ZE$|^STM32F103R8$|^STM32L100RB$|^STM32F207ZC$|^STM32L152VB_A$|^STM32F100ZE$|^STM32F207ZE$|^STM32F101CB$|^STM32L151VD_X$|^STM32L151C6_A$|^STM32L152CB_A$|^STM32F105VC$|^STM32F101VE$|^STM32F101RC$|^STM32L152ZC$|^STM32F217VG$|^STM32F207VE$|^STM32F102RB$|^STM32F207ZG$|^STM32L152C6$|^STM32L151RC$|^STM32L152R6_A$|^STM32F102R8$|^STM32F207VF$|^STM32F101VB$|^STM32L162VC_A$|^STM32L151V8$|^STM32L162ZD$|^STM32L151RD$|^STM32L151VB$|^STM32F217ZG$|^STM32F207VC$|^STM32F101RG$|^STM32L152RB$|^STM32F107RB$|^STM32L162RD$|^STM32F103ZF$|^STM32L152VE$|^STM32L151ZC$|^STM32F207IF$|^STM32F103VB$|^STM32F100ZD$|^STM32F101ZE$|^STM32L152QD$|^STM32L152V8$|^STM32F107RC$|^STM32F100R8$|^STM32F207IC$|^STM32F103VE$|^STM32L100RB_A$|^STM32L152VD_X$|^STM32L152CC$|^STM32F103VC$|^STM32L162VE$|^STM32F105V8$|^STM32L162VD$|^STM32F101RF$|^STM32F101R8$|^STM32F100RD$|^STM32L162RE$|^STM32F217IG$|^STM32L151R8_A$|^STM32F101ZD$|^STM32L152VD$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_12/__Lib_I2C_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_12")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_12)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_I2C_12/__Lib_I2C_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MSP432P401R$|^MSP432P401M$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_MSP UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_MSP PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/MSP/__Lib_I2C_MSP/__Lib_I2C_MSP.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/MSP/__Lib_I2C_MSP")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_MSP)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/MSP/__Lib_I2C_MSP/__Lib_I2C_MSP.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^TM4C1230H6PM$|^TM4C123AH6PM$|^TM4C1232E6PM$|^TM4C1230D5PM$|^TM4C1236H6PM$|^TM4C123FE6PM$|^TM4C123FH6PM$|^TM4C1230E6PM$|^TM4C1232D5PM$|^TM4C1230C3PM$|^TM4C1232H6PM$|^TM4C1236E6PM$|^TM4C123AE6PM$|^TM4C1232C3PM$|^TM4C1236D5PM$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_2/__Lib_I2C_2.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_2")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_2)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_2/__Lib_I2C_2.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^TM4C1231H6PM$|^TM4C1231D5PM$|^TM4C1237D5PM$|^TM4C1237H6PM$|^TM4C1233D5PM$|^TM4C1233E6PM$|^TM4C123BE6PM$|^TM4C123BH6PM$|^TM4C1237E6PM$|^TM4C1233C3PM$|^TM4C123GH6PM$|^TM4C1231C3PM$|^TM4C123GE6PM$|^TM4C1231E6PM$|^TM4C1233H6PM$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_1/__Lib_I2C_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_1")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_1)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_1/__Lib_I2C_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^TM4C129XNCZAD$|^TM4C129XKCZAD$|^TM4C1290NCPDT$|^TM4C1294NCPDT$|^TM4C129EKCPDT$|^TM4C129DNCZAD$|^TM4C129CNCPDT$|^TM4C129ENCPDT$|^TM4C1299NCZAD$|^TM4C1292NCPDT$|^TM4C1297NCZAD$|^TM4C129DNCPDT$|^TM4C1290NCZAD$|^TM4C1294NCZAD$|^TM4C129ENCZAD$|^TM4C1294KCPDT$|^TM4C1292NCZAD$|^TM4C129CNCZAD$|^TM4C129LNCZAD$|^TM4C1299KCZAD$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_09 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_09 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_09/__Lib_I2C_09.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_09")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_09)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_09/__Lib_I2C_09.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^TM4C1237D5PZ$|^TM4C1231E6PZ$|^TM4C123GH6PZ$|^TM4C1237E6PZ$|^TM4C1237H6PGE$|^TM4C1233H6PZ$|^TM4C1237H6PZ$|^TM4C123GH6ZXR$|^TM4C123GE6PZ$|^TM4C123BH6PGE$|^TM4C123BH6ZRB$|^TM4C1233H6PGE$|^TM4C123GH6ZRB$|^TM4C1233E6PZ$|^TM4C123GH6PGE$|^TM4C1231D5PZ$|^TM4C1231H6PGE$|^TM4C1231H6PZ$|^TM4C123BH6PZ$|^TM4C123BE6PZ$|^TM4C1233D5PZ$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_05 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_05 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_05/__Lib_I2C_05.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_05")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_05)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_I2C_05/__Lib_I2C_05.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MKV42F256.+16$|^MKV46F128.+16$|^MKV44F128.+16$|^MKV42F64.+16$|^MKV46F256.+16$|^MKV44F64.+16$|^MKV42F128.+16$|^MKV44F256.+16$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_MKV4x_0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_MKV4x_0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_MKV4x_0/__Lib_I2C_MKV4x_0.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_MKV4x_0")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_MKV4x_0)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_MKV4x_0/__Lib_I2C_MKV4x_0.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK66FN2M0.+18$|^MK80FN256.+15$|^MK66FX1M0.+18$|^MK65FN2M0.+18$|^MK82FN256.+15$|^MK65FX1M0.+18$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_0123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_0123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_0123/__Lib_I2C_0123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_0123")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_0123)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_0123/__Lib_I2C_0123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK64FN1M0.+12$|^MK64FX512.+12$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_012 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_012 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_012/__Lib_I2C_012.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_012")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_012)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_012/__Lib_I2C_012.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK22FN1M0.+12$|^MK22FX512.+12$|^MK22FN128.+10$|^MK22FN256.+12$|^MK22FN128.+12$|^MK22FN512.+12$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_01/__Lib_I2C_01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_01")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_01)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_I2C_01/__Lib_I2C_01.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MKV58F1M0.+24$|^MKV56F1M0.+24$|^MKV56F512.+24$|^MKV58F512.+24$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_I2C_01/__Lib_I2C_01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_I2C_01")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_01)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_I2C_01/__Lib_I2C_01.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK53DN512.+10$|^MK51DN512.+10$|^MK51DX256.+10$|^MK51DN256.+10$|^MK53DX256.+10$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_K5x_01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_K5x_01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_K5x_01/__Lib_I2C_K5x_01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_K5x_01")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_K5x_01)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_K5x_01/__Lib_I2C_K5x_01.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK20DN128.+5$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_0/__Lib_I2C_0.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_0")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_0)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_0/__Lib_I2C_0.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK60DN256.+10$|^MK60DN512.+10$|^MK60DX256.+10$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_K60_01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_K60_01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_K60_01/__Lib_I2C_K60_01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_K60_01")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_K60_01)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_I2C_K60_01/__Lib_I2C_K60_01.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C  DEFAULT_MSG
                                    MikroC.I2C_LIBRARIES)


    set(MikroC.I2C_INCLUDE_DIRS ${MikroC.I2C_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_LIBRARIES})
    
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

