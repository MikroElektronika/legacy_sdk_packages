if (${MCU_NAME} MATCHES "^PIC18F25K40$|^PIC18LF25K40$|^PIC18F24K40$|^PIC18LF24K40$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_1/__Lib_SPI_Remappable_1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_1")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable_1)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_1/__Lib_SPI_Remappable_1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF26J11$|^PIC18LF26J50$|^PIC18F44J50$|^PIC18F46J13$|^PIC18F26J53$|^PIC18LF27J13$|^PIC18LF24J50$|^PIC18F24J50$|^PIC18LF46J53$|^PIC18F27J13$|^PIC18LF25J11$|^PIC18LF45J11$|^PIC18LF46J11$|^PIC18LF45J50$|^PIC18F26J13$|^PIC18LF44J50$|^PIC18F27J53$|^PIC18LF26J13$|^PIC18LF26J53$|^PIC18LF46J13$|^PIC18LF46J50$|^PIC18LF24J11$|^PIC18F47J13$|^PIC18F46J50$|^PIC18F25J50$|^PIC18F26J50$|^PIC18F45J11$|^PIC18LF47J13$|^PIC18LF44J11$|^PIC18F26J11$|^PIC18F46J53$|^PIC18F45J50$|^PIC18F46J11$|^PIC18F47J53$|^PIC18F24J11$|^PIC18LF25J50$|^PIC18F44J11$|^PIC18LF47J53$|^PIC18LF27J53$|^PIC18F25J11$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable/__Lib_SPI_Remappable.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable/__Lib_SPI_Remappable.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F27K40$|^PIC18LF65K40$|^PIC18F26K40$|^PIC18LF67K40$|^PIC18F45K40$|^PIC18LF47K40$|^PIC18F66K40$|^PIC18LF46K40$|^PIC18LF66K40$|^PIC18F47K40$|^PIC18F67K40$|^PIC18F65K40$|^PIC18LF27K40$|^PIC18LF45K40$|^PIC18F46K40$|^PIC18LF26K40$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_12/__Lib_SPI_Remappable_12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_12")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable_12)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_12/__Lib_SPI_Remappable_12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable_K42 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable_K42 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_K42/__Lib_SPI_Remappable_K42.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_K42")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable_K42)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_K42/__Lib_SPI_Remappable_K42.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F96J94$|^PIC18F67J94$|^PIC18F87J94$|^PIC18F65J94$|^PIC18F66J94$|^PIC18F85J94$|^PIC18F97J94$|^PIC18F95J94$|^PIC18F86J94$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable_J94 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable_J94 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_J94/__Lib_SPI_Remappable_J94.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_J94")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable_J94)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_SPI_Remappable_J94/__Lib_SPI_Remappable_J94.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1615$|^PIC16F1764$|^PIC16F1709$|^PIC16F1769$|^PIC16F1716$|^PIC16LF1717$|^PIC16LF1765$|^PIC16F1713$|^PIC16LF1619$|^PIC16F1708$|^PIC16F1768$|^PIC16F1704$|^PIC16F1614$|^PIC16F1703$|^PIC16F1707$|^PIC16F1718$|^PIC16LF1713$|^PIC16LF1718$|^PIC16LF1618$|^PIC16LF1614$|^PIC16F1619$|^PIC16LF1703$|^PIC16LF1707$|^PIC16LF1704$|^PIC16LF1764$|^PIC16LF1719$|^PIC16F1719$|^PIC16LF1705$|^PIC16F1717$|^PIC16LF1768$|^PIC16LF1716$|^PIC16F1765$|^PIC16F1705$|^PIC16LF1615$|^PIC16LF1769$|^PIC16LF1708$|^PIC16LF1709$|^PIC16F1618$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable/__Lib_SPI_Remappable.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable/__Lib_SPI_Remappable.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1779$|^PIC16F18324$|^PIC16LF18323$|^PIC16LF18324$|^PIC16LF1776$|^PIC16LF1779$|^PIC16LF1773$|^PIC16F1776$|^PIC16F18323$|^PIC16LF18344$|^PIC16F18344$|^PIC16LF1778$|^PIC16F1773$|^PIC16F1777$|^PIC16F1778$|^PIC16LF1777$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable_SLR UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable_SLR PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLR/__Lib_SPI_Remappable_SLR.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLR")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable_SLR)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLR/__Lib_SPI_Remappable_SLR.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F18876$|^PIC16F15375$|^PIC16F15376$|^PIC16LF18876$|^PIC16F18877$|^PIC16LF18875$|^PIC16F15354$|^PIC16F18326$|^PIC16LF15375$|^PIC16LF15385$|^PIC16LF15354$|^PIC16F18857$|^PIC16LF18856$|^PIC16F18325$|^PIC16LF15376$|^PIC16LF18857$|^PIC16LF18877$|^PIC16LF15356$|^PIC16LF18326$|^PIC16LF18854$|^PIC16F18875$|^PIC16LF15355$|^PIC16F18855$|^PIC16F18856$|^PIC16LF15386$|^PIC16LF18345$|^PIC16LF18346$|^PIC16LF18855$|^PIC16F15386$|^PIC16F15355$|^PIC16F18345$|^PIC16F18346$|^PIC16LF18325$|^PIC16F15385$|^PIC16F18854$|^PIC16F15356$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_12/__Lib_SPI_Remappable_12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_12")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable_12)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_12/__Lib_SPI_Remappable_12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF19176$|^PIC16LF19155$|^PIC16LF19196$|^PIC16LF19195$|^PIC16F19195$|^PIC16F19185$|^PIC16F19196$|^PIC16LF19156$|^PIC16LF19175$|^PIC16LF19197$|^PIC16F19197$|^PIC16LF19185$|^PIC16LF19186$|^PIC16F19186$|^PIC16F19156$|^PIC16F19155$|^PIC16F19176$|^PIC16F19175$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable_SLRc346 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable_SLRc346 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLRc346/__Lib_SPI_Remappable_SLRc346.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLRc346")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable_SLRc346)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLRc346/__Lib_SPI_Remappable_SLRc346.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F15325$|^PIC16F15344$|^PIC16F18313$|^PIC16LF15323$|^PIC16LF15313$|^PIC16LF15345$|^PIC16F15324$|^PIC16LF15324$|^PIC16LF15325$|^PIC16LF15344$|^PIC16LF18313$|^PIC16F15313$|^PIC16F15323$|^PIC16F15345$")


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(__Lib_SPI_Remappable_SLRa012 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPI_Remappable_SLRa012 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLRa012/__Lib_SPI_Remappable_SLRa012.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLRa012")

    set(MikroC.SPI_Remappable_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Remappable )
        add_library(MikroC.SPI_Remappable INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Remappable INTERFACE __Lib_SPI_Remappable_SLRa012)
    set(MikroC.SPI_Remappable_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_SPI_Remappable_SLRa012/__Lib_SPI_Remappable_SLRa012.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Remappable  DEFAULT_MSG
                                    MikroC.SPI_Remappable_LIBRARIES)


    set(MikroC.SPI_Remappable_INCLUDE_DIRS ${MikroC.SPI_Remappable_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Remappable_LIBRARIES})
    
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

