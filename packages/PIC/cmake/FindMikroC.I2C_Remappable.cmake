if (${MCU_NAME} MATCHES "^PIC18F27K40$|^PIC18F26K40$|^PIC18F45K40$|^PIC18LF47K40$|^PIC18LF46K40$|^PIC18F47K40$|^PIC18LF27K40$|^PIC18LF45K40$|^PIC18F46K40$|^PIC18LF26K40$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable_c34b12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable_c34b12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34b12/__Lib_I2C_Remappable_c34b12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34b12")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable_c34b12)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34b12/__Lib_I2C_Remappable_c34b12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F56K42$|^PIC18F57K42$|^PIC18LF45K42$|^PIC18F25K83$|^PIC18F26K42$|^PIC18LF47K42$|^PIC18F55K42$|^PIC18F26K83$|^PIC18LF26K42$|^PIC18LF56K42$|^PIC18F25K42$|^PIC18LF46K42$|^PIC18F45K42$|^PIC18F47K42$|^PIC18F27K42$|^PIC18LF25K42$|^PIC18F24K42$|^PIC18LF57K42$|^PIC18F46K42$|^PIC18LF27K42$|^PIC18LF55K42$|^PIC18LF24K42$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable_K42 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable_K42 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_K42/__Lib_I2C_Remappable_K42.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_K42")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable_K42)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_K42/__Lib_I2C_Remappable_K42.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F25K40$|^PIC18LF25K40$|^PIC18F24K40$|^PIC18LF24K40$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable_c34 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable_c34 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34/__Lib_I2C_Remappable_c34.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable_c34)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34/__Lib_I2C_Remappable_c34.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF65K40$|^PIC18LF67K40$|^PIC18F66K40$|^PIC18LF66K40$|^PIC18F67K40$|^PIC18F65K40$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable_c34d65 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable_c34d65 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34d65/__Lib_I2C_Remappable_c34d65.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34d65")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable_c34d65)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_Remappable_c34d65/__Lib_I2C_Remappable_c34d65.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F18313$|^PIC16LF15323$|^PIC16LF15313$|^PIC16LF18313$|^PIC16F15313$|^PIC16F15323$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable_a12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable_a12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_a12/__Lib_I2C_Remappable_a12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_a12")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable_a12)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_a12/__Lib_I2C_Remappable_a12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F18876$|^PIC16F15375$|^PIC16F15376$|^PIC16LF18876$|^PIC16F18877$|^PIC16LF18875$|^PIC16F15354$|^PIC16LF15375$|^PIC16LF15385$|^PIC16LF15354$|^PIC16F18857$|^PIC16LF18856$|^PIC16LF15376$|^PIC16LF18857$|^PIC16LF18877$|^PIC16LF15356$|^PIC16LF18854$|^PIC16LF15355$|^PIC16F18875$|^PIC16F18855$|^PIC16F18856$|^PIC16LF15386$|^PIC16LF18855$|^PIC16F15386$|^PIC16F15355$|^PIC16F15385$|^PIC16F18854$|^PIC16F15356$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable_c34b12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable_c34b12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c34b12/__Lib_I2C_Remappable_c34b12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c34b12")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable_c34b12)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c34b12/__Lib_I2C_Remappable_c34b12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F15325$|^PIC16F15344$|^PIC16F18324$|^PIC16LF15345$|^PIC16LF18323$|^PIC16F15324$|^PIC16LF18324$|^PIC16LF15324$|^PIC16F18323$|^PIC16LF18344$|^PIC16LF15325$|^PIC16LF15344$|^PIC16F18344$|^PIC16F15345$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable_c01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable_c01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c01/__Lib_I2C_Remappable_c01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c01")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable_c01)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c01/__Lib_I2C_Remappable_c01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1615$|^PIC16LF19197$|^PIC16F1764$|^PIC16LF1778$|^PIC16F1709$|^PIC16LF1773$|^PIC16LF19196$|^PIC16F1776$|^PIC16F1769$|^PIC16F19195$|^PIC16F1716$|^PIC16LF1717$|^PIC16LF1765$|^PIC16F19155$|^PIC16F19185$|^PIC16F1779$|^PIC16F1713$|^PIC16LF1619$|^PIC16F1708$|^PIC16F1768$|^PIC16LF19176$|^PIC16F1704$|^PIC16LF1779$|^PIC16F19186$|^PIC16F1614$|^PIC16F1703$|^PIC16F1707$|^PIC16F1718$|^PIC16LF1618$|^PIC16LF1713$|^PIC16LF1718$|^PIC16LF19156$|^PIC16LF1614$|^PIC16F1777$|^PIC16F19175$|^PIC16F1619$|^PIC16LF1703$|^PIC16LF1707$|^PIC16LF1704$|^PIC16LF1776$|^PIC16LF19195$|^PIC16F1773$|^PIC16LF1764$|^PIC16F19176$|^PIC16LF1719$|^PIC16LF1777$|^PIC16F1719$|^PIC16F1717$|^PIC16LF1705$|^PIC16F19156$|^PIC16LF1768$|^PIC16LF1716$|^PIC16F19196$|^PIC16F1765$|^PIC16F19197$|^PIC16F1705$|^PIC16LF1615$|^PIC16F1778$|^PIC16LF19155$|^PIC16LF19185$|^PIC16LF1769$|^PIC16LF19175$|^PIC16LF1708$|^PIC16LF1709$|^PIC16LF19186$|^PIC16F1618$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable/__Lib_I2C_Remappable.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable/__Lib_I2C_Remappable.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF18325$|^PIC16LF18345$|^PIC16F18325$|^PIC16F18346$|^PIC16F18326$|^PIC16LF18326$|^PIC16F18345$|^PIC16LF18346$")


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(__Lib_I2C_Remappable_c0145 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_Remappable_c0145 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c0145/__Lib_I2C_Remappable_c0145.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c0145")

    set(MikroC.I2C_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.I2C_Remappable )
        add_library(MikroC.I2C_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C_Remappable INTERFACE __Lib_I2C_Remappable_c0145)
    set(MikroC.I2C_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_Remappable_c0145/__Lib_I2C_Remappable_c0145.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.I2C_Remappable  DEFAULT_MSG
                                    MikroC.I2C_Remappable_LIBRARIES)


    set(MikroC.I2C_Remappable_INCLUDE_DIRS ${MikroC.I2C_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.I2C_Remappable_LIBRARIES})
    
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

