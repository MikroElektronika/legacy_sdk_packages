if (${MCU_NAME} MATCHES "^PIC18LF14K50$|^PIC18LF13K50$|^PIC18F13K50$|^PIC18F14K50$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_genHID_P18K50 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_genHID_P18K50 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18K50/__Lib_USB_genHID_P18K50.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18K50")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_genHID_P18K50)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18K50/__Lib_USB_genHID_P18K50.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.USB  DEFAULT_MSG
                                    MikroC.USB_LIBRARIES)


    set(MikroC.USB_INCLUDE_DIRS ${MikroC.USB_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.USB_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F67J50$|^PIC18F66J50$|^PIC18LF25K50$|^PIC18F45K50$|^PIC18F87J50$|^PIC18F85J50$|^PIC18LF45K50$|^PIC18F65J50$|^PIC18LF46J50$|^PIC18F25K50$|^PIC18F44J50$|^PIC18LF24K50$|^PIC18LF44J50$|^PIC18F24K50$|^PIC18F25J50$|^PIC18LF25J50$|^PIC18F45J50$|^PIC18LF24J50$|^PIC18F86J50$|^PIC18LF26J50$|^PIC18F24J50$|^PIC18F66J55$|^PIC18F26J50$|^PIC18LF45J50$|^PIC18F46J50$|^PIC18F86J55$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_genHID_P18FJ UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_genHID_P18FJ PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ/__Lib_USB_genHID_P18FJ.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_genHID_P18FJ)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ/__Lib_USB_genHID_P18FJ.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.USB  DEFAULT_MSG
                                    MikroC.USB_LIBRARIES)


    set(MikroC.USB_INCLUDE_DIRS ${MikroC.USB_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.USB_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F4553$|^PIC18F4450$|^PIC18F2455$|^PIC18F2458$|^PIC18LF2458$|^PIC18F2450$|^PIC18LF2455$|^PIC18LF2550$|^PIC18LF4458$|^PIC18F4550$|^PIC18LF4450$|^PIC18F2550$|^PIC18LF2450$|^PIC18LF4553$|^PIC18LF2553$|^PIC18F2553$|^PIC18F4455$|^PIC18F4458$|^PIC18LF4455$|^PIC18LF4550$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_genHID UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_genHID PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID/__Lib_USB_genHID.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_genHID)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID/__Lib_USB_genHID.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.USB  DEFAULT_MSG
                                    MikroC.USB_LIBRARIES)


    set(MikroC.USB_INCLUDE_DIRS ${MikroC.USB_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.USB_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF27J53$|^PIC18F26J53$|^PIC18LF26J53$|^PIC18LF46J53$|^PIC18F46J53$|^PIC18F27J53$|^PIC18F47J53$|^PIC18LF47J53$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_genHID_P18FJ53 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_genHID_P18FJ53 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ53/__Lib_USB_genHID_P18FJ53.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ53")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_genHID_P18FJ53)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ53/__Lib_USB_genHID_P18FJ53.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.USB  DEFAULT_MSG
                                    MikroC.USB_LIBRARIES)


    set(MikroC.USB_INCLUDE_DIRS ${MikroC.USB_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.USB_LIBRARIES})
    
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


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_genHID_P18FJ94 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_genHID_P18FJ94 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ94/__Lib_USB_genHID_P18FJ94.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ94")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_genHID_P18FJ94)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_USB_genHID_P18FJ94/__Lib_USB_genHID_P18FJ94.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.USB  DEFAULT_MSG
                                    MikroC.USB_LIBRARIES)


    set(MikroC.USB_INCLUDE_DIRS ${MikroC.USB_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.USB_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1459$|^PIC16LF1459$|^PIC16F1454$|^PIC16LF1455$|^PIC16F1455$|^PIC16LF1454$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_genHID_P16F145x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_genHID_P16F145x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_USB_genHID_P16F145x/__Lib_USB_genHID_P16F145x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_USB_genHID_P16F145x")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_genHID_P16F145x)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_USB_genHID_P16F145x/__Lib_USB_genHID_P16F145x.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.USB  DEFAULT_MSG
                                    MikroC.USB_LIBRARIES)


    set(MikroC.USB_INCLUDE_DIRS ${MikroC.USB_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.USB_LIBRARIES})
    
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

