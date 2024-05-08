if (${MCU_NAME} MATCHES "^ATMEGA2560$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_e01_d23_h01_j01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_e01_d23_h01_j01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_e01_d23_h01_j01/__Lib_UART_e01_d23_h01_j01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_e01_d23_h01_j01")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_e01_d23_h01_j01)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_e01_d23_h01_j01/__Lib_UART_e01_d23_h01_j01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA128A1$|^ATXMEGA128A1U$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA128B3$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23/__Lib_UART_c23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23/__Lib_UART_c23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA256A3BU$|^ATXMEGA256A3B$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23_d67_e23_f23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23_d67_e23_f23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_f23/__Lib_UART_c23_c67_d23_d67_e23_f23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_f23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23_d67_e23_f23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_f23/__Lib_UART_c23_c67_d23_d67_e23_f23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA128D4$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_d23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_d23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_d23/__Lib_UART_c23_d23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_d23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_d23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_d23/__Lib_UART_c23_d23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA128A4U$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23_d67_e23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23_d67_e23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23/__Lib_UART_c23_c67_d23_d67_e23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23_d67_e23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23/__Lib_UART_c23_c67_d23_d67_e23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA192C3$|^ATXMEGA256D3$|^ATXMEGA384D3$|^ATXMEGA384C3$|^ATXMEGA128C3$|^ATXMEGA128D3$|^ATXMEGA192D3$|^ATXMEGA256C3$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_d23_e23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_d23_e23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_d23_e23/__Lib_UART_c23_d23_e23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_d23_e23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_d23_e23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_d23_e23/__Lib_UART_c23_d23_e23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA2561$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_e01_d23_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_e01_d23_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_e01_d23_eio/__Lib_UART_e01_d23_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_e01_d23_eio")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_e01_d23_eio)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_e01_d23_eio/__Lib_UART_e01_d23_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA128B1$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_e23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_e23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_e23/__Lib_UART_c23_e23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_e23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_e23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_e23/__Lib_UART_c23_e23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA192A3U$|^ATXMEGA256A3U$|^ATXMEGA128A3U$|^ATXMEGA128A3$|^ATXMEGA192A3$|^ATXMEGA256A3$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23_d67_e23_e67_f23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23_d67_e23_e67_f23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23/__Lib_UART_c23_c67_d23_d67_e23_e67_f23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23_d67_e23_e67_f23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23/__Lib_UART_c23_c67_d23_d67_e23_e67_f23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_1_c23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_1_c23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_1_c23/__Lib_UART_1_c23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_1_c23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_1_c23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_1_c23/__Lib_UART_1_c23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^AT90S2313$|^AT90S4414$|^AT90S8535$|^ATMEGA163$|^AT90S4434$|^AT90S8515$|^AT90S4433$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d01_noadv UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d01_noadv PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_noadv/__Lib_UART_d01_noadv.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_noadv")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d01_noadv)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_noadv/__Lib_UART_d01_noadv.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA161$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d01_b23_noadv UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d01_b23_noadv PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_b23_noadv/__Lib_UART_d01_b23_noadv.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_b23_noadv")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d01_b23_noadv)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_b23_noadv/__Lib_UART_d01_b23_noadv.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATTINY1634$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_01_a7b0_b12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_01_a7b0_b12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_01_a7b0_b12/__Lib_UART_01_a7b0_b12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_01_a7b0_b12")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_01_a7b0_b12)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_01_a7b0_b12/__Lib_UART_01_a7b0_b12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA640$|^ATMEGA1280$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_e01_d23_h01_j01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_e01_d23_h01_j01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23_h01_j01/__Lib_UART_e01_d23_h01_j01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23_h01_j01")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_e01_d23_h01_j01)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23_h01_j01/__Lib_UART_e01_d23_h01_j01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA16C4$|^ATXMEGA32C4$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23/__Lib_UART_c23_c67_d23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23/__Lib_UART_c23_c67_d23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA64A1$|^ATXMEGA64A1U$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67/__Lib_UART_c23_c67_d23_d67_e23_e67_f23_f67.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA64B3$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23/__Lib_UART_c23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23/__Lib_UART_c23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA48$|^ATMEGA168PA$|^ATMEGA88PA$|^ATMEGA48PB$|^ATMEGA48A$|^ATMEGA88PB$|^ATMEGA88P$|^ATMEGA328$|^ATMEGA48PA$|^ATMEGA88A$|^ATMEGA48P$|^ATMEGA168$|^ATMEGA328P$|^ATMEGA88$|^ATMEGA644$|^ATMEGA168A$|^ATMEGA168PB$|^ATMEGA168P$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d01_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d01_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_eio/__Lib_UART_d01_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_eio")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d01_eio)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_eio/__Lib_UART_d01_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA16D4$|^ATXMEGA32D4$|^ATXMEGA64D4$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_d23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_d23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_d23/__Lib_UART_c23_d23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_d23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_d23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_d23/__Lib_UART_c23_d23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d01_b23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d01_b23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_b23/__Lib_UART_d01_b23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_b23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d01_b23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_b23/__Lib_UART_d01_b23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_01_a12_alt_a7b2_a45 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_01_a12_alt_a7b2_a45 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_01_a12_alt_a7b2_a45/__Lib_UART_01_a12_alt_a7b2_a45.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_01_a12_alt_a7b2_a45")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_01_a12_alt_a7b2_a45)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_01_a12_alt_a7b2_a45/__Lib_UART_01_a12_alt_a7b2_a45.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATTINY4313$|^ATTINY2313$|^ATTINY2313A$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01/__Lib_UART_d01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d01)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01/__Lib_UART_d01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_1_b32 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_1_b32 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_1_b32/__Lib_UART_1_b32.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_1_b32")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_1_b32)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_1_b32/__Lib_UART_1_b32.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^AT90USB646$|^AT90USB162$|^ATMEGA8U2$|^ATMEGA32U6$|^AT90USB1286$|^AT90USB1287$|^ATMEGA16U4$|^AT90USB82$|^ATMEGA16U2$|^ATMEGA32U4$|^ATMEGA32U2$|^AT90USB647$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d23/__Lib_UART_d23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d23/__Lib_UART_d23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^AT90PWM2B$|^AT90PWM216$|^AT90PWM316$|^AT90PWM2$|^AT90PWM3$|^AT90PWM3B$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d43 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d43 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d43/__Lib_UART_d43.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d43")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d43)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d43/__Lib_UART_d43.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA16A$|^ATMEGA16$|^ATMEGA32A$|^ATMEGA323$|^ATMEGA8515$|^ATMEGA8A$|^ATMEGA8535$|^ATMEGA32$|^ATMEGA8$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d01_ursel UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d01_ursel PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_ursel/__Lib_UART_d01_ursel.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_ursel")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d01_ursel)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_ursel/__Lib_UART_d01_ursel.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA16A4U$|^ATXMEGA32A4$|^ATXMEGA16A4$|^ATXMEGA32A4U$|^ATXMEGA64A4U$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23_d67_e23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23_d67_e23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23/__Lib_UART_c23_c67_d23_d67_e23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23_d67_e23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23/__Lib_UART_c23_c67_d23_d67_e23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_e01_noadv UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_e01_noadv PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_noadv/__Lib_UART_e01_noadv.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_noadv")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_e01_noadv)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_noadv/__Lib_UART_e01_noadv.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA8E5$|^ATXMEGA32E5$|^ATXMEGA16E5$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23_d67 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23_d67 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67/__Lib_UART_c23_c67_d23_d67.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23_d67)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67/__Lib_UART_c23_c67_d23_d67.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA64D3$|^ATXMEGA64C3$|^ATXMEGA32C3$|^ATXMEGA32D3$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_d23_e23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_d23_e23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_d23_e23/__Lib_UART_c23_d23_e23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_d23_e23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_d23_e23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_d23_e23/__Lib_UART_c23_d23_e23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA324PB$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_123/__Lib_UART_123.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_123")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_123)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_123/__Lib_UART_123.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA644P$|^ATMEGA324$|^ATMEGA324A$|^ATMEGA1284P$|^ATMEGA644A$|^ATMEGA164A$|^ATMEGA644PA$|^ATMEGA164P$|^ATMEGA324PA$|^ATMEGA164PA$|^ATMEGA1284$|^ATMEGA164$|^ATMEGA324P$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_d01_d23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_d01_d23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_d23/__Lib_UART_d01_d23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_d23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_d01_d23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_d01_d23/__Lib_UART_d01_d23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_e01_d23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_e01_d23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23/__Lib_UART_e01_d23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_e01_d23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23/__Lib_UART_e01_d23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATTINY828$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_0/__Lib_UART_c23_0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_0")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_0)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_0/__Lib_UART_c23_0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA645A$|^ATMEGA649$|^ATMEGA3250$|^ATMEGA6490$|^ATMEGA649A$|^ATMEGA169PA$|^ATMEGA6450A$|^ATMEGA3290A$|^ATMEGA329PA$|^ATMEGA169A$|^ATMEGA169P$|^ATMEGA3290$|^ATMEGA3290P$|^ATMEGA325P$|^ATMEGA3250PA$|^ATMEGA6450$|^ATMEGA645P$|^ATMEGA165PA$|^ATMEGA165P$|^ATMEGA645$|^ATMEGA6490A$|^ATMEGA325A$|^ATMEGA6490P$|^ATMEGA649P$|^ATMEGA169$|^ATMEGA329A$|^ATMEGA6450P$|^ATMEGA329$|^ATMEGA165A$|^ATMEGA329P$|^ATMEGA3250A$|^ATMEGA3250P$|^ATMEGA165$|^ATMEGA325$|^ATMEGA325PA$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_e01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_e01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01/__Lib_UART_e01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_e01)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01/__Lib_UART_e01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA64B1$")


    if (NOT TARGET MikroC.Uart )
        add_library(__Lib_Uart_c23_e23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Uart_c23_e23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_Uart_c23_e23/__Lib_Uart_c23_e23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_Uart_c23_e23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.Uart )
        add_library(MikroC.Uart INTERFACE)
    endif()

    target_link_libraries(MikroC.Uart INTERFACE __Lib_Uart_c23_e23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_Uart_c23_e23/__Lib_Uart_c23_e23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Uart  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^AT90CAN64$|^ATMEGA1281$|^AT90CAN128$|^AT90CAN32$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_e01_d23_eio UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_e01_d23_eio PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23_eio/__Lib_UART_e01_d23_eio.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23_eio")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_e01_d23_eio)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_e01_d23_eio/__Lib_UART_e01_d23_eio.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATMEGA328PB$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_12_d01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_12_d01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_12_d01/__Lib_UART_12_d01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_12_d01")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_12_d01)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_12_d01/__Lib_UART_12_d01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

if (${MCU_NAME} MATCHES "^ATXMEGA64A3$|^ATXMEGA64A3U$")


    if (NOT TARGET MikroC.UART )
        add_library(__Lib_UART_c23_c67_d23_d67_e23_e67_f23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_UART_c23_c67_d23_d67_e23_e67_f23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23/__Lib_UART_c23_c67_d23_d67_e23_e67_f23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23")

    set(MikroC.UART_DEFINITIONS )


    if (NOT TARGET MikroC.UART )
        add_library(MikroC.UART INTERFACE)
    endif()

    target_link_libraries(MikroC.UART INTERFACE __Lib_UART_c23_c67_d23_d67_e23_e67_f23)
    set(MikroC.UART_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_UART_c23_c67_d23_d67_e23_e67_f23/__Lib_UART_c23_c67_d23_d67_e23_e67_f23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.UART  DEFAULT_MSG
                                    MikroC.UART_LIBRARIES)


    set(MikroC.UART_INCLUDE_DIRS ${MikroC.UART_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.UART_LIBRARIES})

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

