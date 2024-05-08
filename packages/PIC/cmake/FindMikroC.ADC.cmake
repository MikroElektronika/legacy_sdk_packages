if (${MCU_NAME} MATCHES "^PIC18LF1320$|^PIC18F1220$|^PIC18LF1220$|^PIC18F1320$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1x20 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1x20 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1x20/__Lib_ADC_1x20.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1x20")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1x20)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1x20/__Lib_ADC_1x20.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F87K22$|^PIC18LF25K80$|^PIC18F45K80$|^PIC18F85K22$|^PIC18LF66K80$|^PIC18F25K80$|^PIC18F66K80$|^PIC18F65K22$|^PIC18F86K22$|^PIC18F86K90$|^PIC18F66K22$|^PIC18LF65K80$|^PIC18F87K90$|^PIC18F67K90$|^PIC18LF45K80$|^PIC18F65K80$|^PIC18F26K80$|^PIC18LF26K80$|^PIC18F65K90$|^PIC18F46K80$|^PIC18F85K90$|^PIC18F67K22$|^PIC18LF46K80$|^PIC18F66K90$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_K22 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_K22 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K22/__Lib_ADC_K22.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K22")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_K22)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K22/__Lib_ADC_K22.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F66J11$|^PIC18F67J11$|^PIC18F86J11$|^PIC18F86J16$|^PIC18F66J16$|^PIC18F87J11$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_E UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_E PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_E/__Lib_ADC_A_E.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_E")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_E)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_E/__Lib_ADC_A_E.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F4331$|^PIC18F4431$|^PIC18F2431$|^PIC18LF4431$|^PIC18LF2331$|^PIC18LF4331$|^PIC18F2331$|^PIC18LF2431$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_F UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_F PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_F/__Lib_ADC_A_F.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_F")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_F)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_F/__Lib_ADC_A_F.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F24J50$|^PIC18LF45J50$|^PIC18F46J50$|^PIC18LF46J50$|^PIC18LF25J50$|^PIC18LF44J50$|^PIC18LF24J50$|^PIC18LF26J50$|^PIC18F25J50$|^PIC18F26J50$|^PIC18F44J50$|^PIC18F45J50$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_xJ50 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_xJ50 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xJ50/__Lib_ADC_xJ50.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xJ50")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_xJ50)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xJ50/__Lib_ADC_xJ50.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF46K40$|^PIC18F24K42$|^PIC18LF24K42$|^PIC18LF25K42$|^PIC18LF55K42$|^PIC18LF24K40$|^PIC18LF65K40$|^PIC18LF47K42$|^PIC18F67K40$|^PIC18F25K40$|^PIC18F47K40$|^PIC18LF56K42$|^PIC18LF57K42$|^PIC18F46K40$|^PIC18F55K42$|^PIC18LF25K40$|^PIC18LF26K40$|^PIC18LF67K40$|^PIC18LF26K42$|^PIC18F26K83$|^PIC18F24K40$|^PIC18LF47K40$|^PIC18F45K40$|^PIC18LF46K42$|^PIC18F27K42$|^PIC18F25K83$|^PIC18F57K42$|^PIC18F66K40$|^PIC18LF45K40$|^PIC18F26K40$|^PIC18F27K40$|^PIC18F65K40$|^PIC18LF27K42$|^PIC18F46K42$|^PIC18LF66K40$|^PIC18LF45K42$|^PIC18LF27K40$|^PIC18F25K42$|^PIC18F47K42$|^PIC18F45K42$|^PIC18F26K42$|^PIC18F56K42$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_K40 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_K40 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K40/__Lib_ADC_K40.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K40")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_K40)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K40/__Lib_ADC_K40.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F66J55$|^PIC18F85J50$|^PIC18F65J50$|^PIC18F87J50$|^PIC18F67J50$|^PIC18F66J50$|^PIC18F86J55$|^PIC18F86J50$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_87J50 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_87J50 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_87J50/__Lib_ADC_87J50.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_87J50")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_87J50)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_87J50/__Lib_ADC_87J50.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF25K50$|^PIC18F24K50$|^PIC18F25K50$|^PIC18LF24K50$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_2xK50 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_2xK50 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_2xK50/__Lib_ADC_2xK50.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_2xK50")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_2xK50)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_2xK50/__Lib_ADC_2xK50.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F458$|^PIC18F242$|^PIC18F4539$|^PIC18C252$|^PIC18C442$|^PIC18C452$|^PIC18F2439$|^PIC18F442$|^PIC18F258$|^PIC18F248$|^PIC18F252$|^PIC18C242$|^PIC18F2539$|^PIC18F448$|^PIC18F4439$|^PIC18F452$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_C UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_C PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_C/__Lib_ADC_A_C.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_C")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_C)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_C/__Lib_ADC_A_C.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF44K22$|^PIC18F25K22$|^PIC18F46K22$|^PIC18LF26K22$|^PIC18F44K22$|^PIC18LF24K22$|^PIC18LF43K22$|^PIC18F26K22$|^PIC18F24K22$|^PIC18F43K22$|^PIC18F23K22$|^PIC18LF46K22$|^PIC18LF23K22$|^PIC18LF25K22$|^PIC18LF45K22$|^PIC18F45K22$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_K22_B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_K22_B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K22_B/__Lib_ADC_K22_B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K22_B")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_K22_B)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_K22_B/__Lib_ADC_K22_B.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F45K50$|^PIC18LF45K50$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_4xK50 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_4xK50 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_4xK50/__Lib_ADC_4xK50.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_4xK50")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_4xK50)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_4xK50/__Lib_ADC_4xK50.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_J94 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_J94 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_J94/__Lib_ADC_J94.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_J94")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_J94)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_J94/__Lib_ADC_J94.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F67J90$|^PIC18F67J93$|^PIC18F66J93$|^PIC18F86J93$|^PIC18F87J90$|^PIC18F87J93$|^PIC18F86J90$|^PIC18F86J72$|^PIC18F87J72$|^PIC18F66J90$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_xxJ90 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_xxJ90 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xxJ90/__Lib_ADC_xxJ90.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xxJ90")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_xxJ90)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xxJ90/__Lib_ADC_xxJ90.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF14K50$|^PIC18LF13K50$|^PIC18F13K50$|^PIC18F14K50$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1xK50 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1xK50 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1xK50/__Lib_ADC_1xK50.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1xK50")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1xK50)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1xK50/__Lib_ADC_1xK50.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF26J11$|^PIC18F26J11$|^PIC18LF27J13$|^PIC18LF26J53$|^PIC18F44J11$|^PIC18F26J13$|^PIC18F27J13$|^PIC18LF46J53$|^PIC18LF46J11$|^PIC18F26J53$|^PIC18LF47J13$|^PIC18F47J53$|^PIC18LF25J11$|^PIC18F46J53$|^PIC18F46J13$|^PIC18LF24J11$|^PIC18LF44J11$|^PIC18F24J11$|^PIC18LF46J13$|^PIC18F45J11$|^PIC18F25J11$|^PIC18LF47J53$|^PIC18LF45J11$|^PIC18F46J11$|^PIC18F47J13$|^PIC18LF27J53$|^PIC18F27J53$|^PIC18LF26J13$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_xJ11 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_xJ11 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xJ11/__Lib_ADC_xJ11.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xJ11")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_xJ11)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_xJ11/__Lib_ADC_xJ11.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF1230$|^PIC18F1330$|^PIC18F1230$|^PIC18LF1330$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1x30 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1x30 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1x30/__Lib_ADC_1x30.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1x30")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1x30)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_1x30/__Lib_ADC_1x30.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F8585$|^PIC18F97J60$|^PIC18LF4620$|^PIC18LF8410$|^PIC18F24J10$|^PIC18LF4458$|^PIC18F4585$|^PIC18F8490$|^PIC18F87J60$|^PIC18F2610$|^PIC18F83J90$|^PIC18F2553$|^PIC18F6680$|^PIC18F4510$|^PIC18LF4580$|^PIC18F2620$|^PIC18LF2620$|^PIC18F2321$|^PIC18F6628$|^PIC18LF6410$|^PIC18LF8628$|^PIC18LF4520$|^PIC18F8628$|^PIC18F2420$|^PIC18F4550$|^PIC18F96J65$|^PIC18F64J11$|^PIC18LF2510$|^PIC18LF45J10$|^PIC18F4221$|^PIC18LF4682$|^PIC18LF8310$|^PIC18LF4321$|^PIC18F4320$|^PIC18F24K20$|^PIC18F2580$|^PIC18F8390$|^PIC18F44J10$|^PIC18F65J90$|^PIC18F63J11$|^PIC18F4458$|^PIC18LF6390$|^PIC18LF8493$|^PIC18C858$|^PIC18LF4455$|^PIC18F84J90$|^PIC18F8525$|^PIC18F4450$|^PIC18F6493$|^PIC18F6722$|^PIC18LF4221$|^PIC18LF4480$|^PIC18LF6393$|^PIC18F44K20$|^PIC18F4410$|^PIC18C658$|^PIC18LF4685$|^PIC18F6310$|^PIC18LF4423$|^PIC18F65J15$|^PIC18LF2458$|^PIC18F2515$|^PIC18LF2680$|^PIC18LF6722$|^PIC18LF4450$|^PIC18F25K20$|^PIC18LF6723$|^PIC18F66J10$|^PIC18F8720$|^PIC18C601$|^PIC18F8620$|^PIC18F2320$|^PIC18LF25J10$|^PIC18F45K20$|^PIC18F6393$|^PIC18LF2550$|^PIC18LF2585$|^PIC18LF2520$|^PIC18LF8527$|^PIC18F25J10$|^PIC18LF8490$|^PIC18LF2580$|^PIC18LF2450$|^PIC18F2685$|^PIC18F6520$|^PIC18F96J60$|^PIC18LF2321$|^PIC18F8527$|^PIC18F8627$|^PIC18F85J11$|^PIC18F2682$|^PIC18LF4220$|^PIC18F45J10$|^PIC18F8621$|^PIC18LF2320$|^PIC18F6723$|^PIC18F2585$|^PIC18LF8627$|^PIC18F6627$|^PIC18F2520$|^PIC18LF4420$|^PIC18F4420$|^PIC18LF4550$|^PIC18F6621$|^PIC18F2550$|^PIC18F4620$|^PIC18LF4585$|^PIC18LF6527$|^PIC18F2680$|^PIC18LF2685$|^PIC18LF2553$|^PIC18LF4553$|^PIC18F2523$|^PIC18LF2515$|^PIC18F4220$|^PIC18LF2682$|^PIC18F84J11$|^PIC18F2220$|^PIC18F13K22$|^PIC18LF8520$|^PIC18F4682$|^PIC18F86J10$|^PIC18F8520$|^PIC18F4553$|^PIC18F2221$|^PIC18F6720$|^PIC18F2455$|^PIC18F65J11$|^PIC18LF13K22$|^PIC18LF8723$|^PIC18F2410$|^PIC18F6622$|^PIC18F83J11$|^PIC18F8310$|^PIC18F23K20$|^PIC18F8622$|^PIC18F2480$|^PIC18F85J90$|^PIC18LF2420$|^PIC18LF4523$|^PIC18F43K20$|^PIC18F46K20$|^PIC18F4520$|^PIC18F67J10$|^PIC18LF2610$|^PIC18F64J90$|^PIC18F26K20$|^PIC18F8722$|^PIC18F85J10$|^PIC18F4685$|^PIC18LF6627$|^PIC18LF8393$|^PIC18F8723$|^PIC18LF2410$|^PIC18F2423$|^PIC18LF6520$|^PIC18F2525$|^PIC18F6390$|^PIC18F2510$|^PIC18LF6493$|^PIC18F4523$|^PIC18F4423$|^PIC18LF2221$|^PIC18F6527$|^PIC18F4515$|^PIC18LF4320$|^PIC18F85J15$|^PIC18LF4680$|^PIC18LF6490$|^PIC18LF8722$|^PIC18LF2423$|^PIC18F4525$|^PIC18F8393$|^PIC18F4321$|^PIC18F66J15$|^PIC18LF24J10$|^PIC18F66J60$|^PIC18F66J65$|^PIC18F8680$|^PIC18F4610$|^PIC18F4580$|^PIC18F2450$|^PIC18LF8720$|^PIC18LF14K22$|^PIC18LF2525$|^PIC18F6620$|^PIC18LF2455$|^PIC18F65J10$|^PIC18F67J60$|^PIC18LF44J10$|^PIC18LF6628$|^PIC18LF4410$|^PIC18F6490$|^PIC18F8493$|^PIC18F6525$|^PIC18F86J15$|^PIC18LF4610$|^PIC18LF2523$|^PIC18F6410$|^PIC18F2458$|^PIC18F6585$|^PIC18C801$|^PIC18LF2480$|^PIC18LF4515$|^PIC18LF4525$|^PIC18F86J60$|^PIC18F8410$|^PIC18F4680$|^PIC18LF2220$|^PIC18LF8622$|^PIC18F63J90$|^PIC18LF4510$|^PIC18LF8390$|^PIC18F4455$|^PIC18F4480$|^PIC18LF6622$|^PIC18F86J65$|^PIC18LF6310$|^PIC18F14K22$|^PIC18F87J10$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_D UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_D PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_D/__Lib_ADC_A_D.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_D")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_D)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_ADC_A_D/__Lib_ADC_A_D.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1517$|^PIC16F1455$|^PIC16F1615$|^PIC16LF1613$|^PIC16LF1904$|^PIC16LF1906$|^PIC12F1572$|^PIC16LF1507$|^PIC16LF1503$|^PIC12LF1501$|^PIC16F1512$|^PIC12F1840$|^PIC16LF1574$|^PIC16F1526$|^PIC12F1571$|^PIC16F1508$|^PIC16F1507$|^PIC16LF1519$|^PIC16F1519$|^PIC16F1503$|^PIC16LF1619$|^PIC16LF1509$|^PIC16LF1518$|^PIC16LF1907$|^PIC16LF1455$|^PIC16LF1526$|^PIC16F1518$|^PIC16F1614$|^PIC12F1822$|^PIC16LF1508$|^PIC16F1509$|^PIC16LF1903$|^PIC16LF1618$|^PIC16LF1902$|^PIC16LF1614$|^PIC12F1501$|^PIC16F1619$|^PIC16LF1459$|^PIC12LF1612$|^PIC16F1459$|^PIC16F1578$|^PIC16F1517$|^PIC16LF1512$|^PIC12LF1552$|^PIC16LF1578$|^PIC12LF1571$|^PIC16F1575$|^PIC16F1527$|^PIC16F1613$|^PIC12LF1840$|^PIC12F1612$|^PIC16LF1513$|^PIC16F1516$|^PIC16LF1527$|^PIC16F1823$|^PIC12LF1822$|^PIC16LF1615$|^PIC16F1579$|^PIC16LF1575$|^PIC16LF1823$|^PIC16F1513$|^PIC16LF1516$|^PIC16F1574$|^PIC12LF1572$|^PIC16F1618$|^PIC16LF1579$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_B/__Lib_ADC_B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_B")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_B)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_B/__Lib_ADC_B.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F15375$|^PIC16F15376$|^PIC16F15354$|^PIC16LF15375$|^PIC16LF15385$|^PIC16LF15344$|^PIC16LF15354$|^PIC16F15313$|^PIC16LF15325$|^PIC16F15323$|^PIC16LF15376$|^PIC16LF15324$|^PIC16F15324$|^PIC16LF15356$|^PIC16F15325$|^PIC16LF15355$|^PIC16LF15386$|^PIC16F15345$|^PIC16F15344$|^PIC16LF15345$|^PIC16F15386$|^PIC16F15355$|^PIC16F15385$|^PIC16LF15323$|^PIC16LF15313$|^PIC16F15356$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_C UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_C PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_C/__Lib_ADC_C.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_C")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_C)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_C/__Lib_ADC_C.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1713$|^PIC16F1716$|^PIC16LF1705$|^PIC16LF1717$|^PIC16F1713$|^PIC16LF1719$|^PIC16LF1709$|^PIC16LF1707$|^PIC16LF1718$|^PIC16LF1703$|^PIC16F1719$|^PIC16LF1716$|^PIC16F1717$|^PIC16F1705$|^PIC16F1703$|^PIC16F1718$|^PIC16F1709$|^PIC16F1707$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_17xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_17xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_17xx/__Lib_ADC_17xx.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_17xx")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_17xx)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_17xx/__Lib_ADC_17xx.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F18856$|^PIC16F18877$|^PIC16LF18856$|^PIC16F18854$|^PIC16F18876$|^PIC16F18857$|^PIC16F18875$|^PIC16LF18876$|^PIC16F18855$|^PIC16LF18857$|^PIC16LF18875$|^PIC16LF18877$|^PIC16LF18854$|^PIC16LF18855$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_18xxx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_18xxx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_18xxx/__Lib_ADC_18xxx.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_18xxx")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_18xxx)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_18xxx/__Lib_ADC_18xxx.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1566$|^PIC16LF1567$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12_B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12_B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_12_B/__Lib_ADC_12_B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_12_B")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12_B)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_12_B/__Lib_ADC_12_B.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1554$|^PIC16LF1559$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_12/__Lib_ADC_12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_12")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_12/__Lib_ADC_12.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1824$|^PIC16LF1937$|^PIC16LF1824$|^PIC16F1847$|^PIC16F1764$|^PIC16F1947$|^PIC16LF1826$|^PIC16LF1939$|^PIC16F1769$|^PIC16F1938$|^PIC16LF1765$|^PIC16LF1947$|^PIC16F1708$|^PIC16F1768$|^PIC16LF1936$|^PIC16LF1828$|^PIC16F1704$|^PIC16F1825$|^PIC16F1826$|^PIC16F1827$|^PIC16F1829$|^PIC16LF1825$|^PIC16F1934$|^PIC16F1937$|^PIC16LF1704$|^PIC16F1939$|^PIC16F1936$|^PIC16LF1933$|^PIC16F1829LIN$|^PIC16LF1934$|^PIC16LF1764$|^PIC16F1933$|^PIC16F1946$|^PIC16LF1768$|^PIC16LF1827$|^PIC16F1765$|^PIC16LF1769$|^PIC16LF1829$|^PIC16LF1946$|^PIC16LF1847$|^PIC16LF1708$|^PIC16F1828$|^PIC16LF1938$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC/__Lib_ADC.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC/__Lib_ADC.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_191xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_191xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_191xx/__Lib_ADC_191xx.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_191xx")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_191xx)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_191xx/__Lib_ADC_191xx.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F18323$|^PIC16LF1777$|^PIC16F1776$|^PIC16F18344$|^PIC16F18326$|^PIC16LF18324$|^PIC16F18313$|^PIC16LF1779$|^PIC16LF1778$|^PIC16F1779$|^PIC16LF1773$|^PIC16F18325$|^PIC16LF1776$|^PIC16F1773$|^PIC16F1778$|^PIC16LF18313$|^PIC16LF18326$|^PIC16LF18345$|^PIC16LF18346$|^PIC16F1777$|^PIC16LF18323$|^PIC16F18345$|^PIC16LF18344$|^PIC16F18346$|^PIC16LF18325$|^PIC16F18324$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_17xx_B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_17xx_B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_17xx_B/__Lib_ADC_17xx_B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_17xx_B")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_17xx_B)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_17xx_B/__Lib_ADC_17xx_B.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1788$|^PIC16F1783$|^PIC16F1789$|^PIC16F1782$|^PIC16F1784$|^PIC16LF1786$|^PIC16F1788$|^PIC16F1787$|^PIC16LF1789$|^PIC16F1786$|^PIC16LF1782$|^PIC16LF1783$|^PIC16LF1784$|^PIC16LF1787$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_178x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_178x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_178x/__Lib_ADC_178x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_178x")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_178x)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_ADC_178x/__Lib_ADC_178x.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F689$|^PIC16F684$|^PIC16HV616$|^PIC12F752$|^PIC16F616$|^PIC16F785$|^PIC16HV785$|^PIC16F685$|^PIC12HV752$|^PIC16F676$|^PIC16F690$|^PIC16F688$|^PIC16F687$|^PIC16F677$|^PIC16HV753$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_B/__Lib_ADC_A_B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_B")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_B)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_B/__Lib_ADC_A_B.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F707$|^PIC16LF707$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_707 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_707 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_707/__Lib_ADC_707.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_707")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_707)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_707/__Lib_ADC_707.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16C74A$|^PIC16C73A$|^PIC16C72$|^PIC16F716$|^PIC16F74$|^PIC16C77$|^PIC16C924$|^PIC16F76$|^PIC12CE673$|^PIC16F73$|^PIC16F72$|^PIC16C72A$|^PIC16C711$|^PIC12C671$|^PIC16C73B$|^PIC16C765$|^PIC16C745$|^PIC16C74B$|^PIC16C716$|^PIC16F77$|^PIC16C433$|^PIC16C715$|^PIC16C71$|^PIC12C672$|^PIC16C712$|^PIC12CE674$|^PIC16CR72$|^PIC16C76$|^PIC16C710$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_A/__Lib_ADC_A_A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_A")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_A)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_A/__Lib_ADC_A_A.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC10LF320$|^PIC10F322$|^PIC10LF322$|^PIC10F320$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_G UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_G PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_G/__Lib_ADC_A_G.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_G")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_G)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_G/__Lib_ADC_A_G.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC12F675$|^PIC12F683$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_E UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_E PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_E/__Lib_ADC_A_E.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_E")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_E)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_E/__Lib_ADC_A_E.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC12F617$|^PIC12HV615$|^PIC12F615$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_F UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_F PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_F/__Lib_ADC_A_F.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_F")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_F)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_F/__Lib_ADC_A_F.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F721$|^PIC16F720$|^PIC16LF720$|^PIC16LF721$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_720 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_720 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_720/__Lib_ADC_720.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_720")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_720)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_720/__Lib_ADC_720.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F737$|^PIC16F747$|^PIC16F777$|^PIC16F767$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_7X7 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_7X7 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_7X7/__Lib_ADC_7X7.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_7X7")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_7X7)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_7X7/__Lib_ADC_7X7.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F88$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_88 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_88 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_88/__Lib_ADC_88.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_88")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_88)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_88/__Lib_ADC_88.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F753$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_753 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_753 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_753/__Lib_ADC_753.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_753")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_753)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_753/__Lib_ADC_753.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F882$|^PIC16F883$|^PIC16F886$|^PIC16F887$|^PIC16F884$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_88X UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_88X PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_88X/__Lib_ADC_88X.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_88X")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_88X)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_88X/__Lib_ADC_88X.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF723$|^PIC16F726$|^PIC16F724$|^PIC16F723A$|^PIC16F727$|^PIC16LF726$|^PIC16F722$|^PIC16LF722$|^PIC16LF724$|^PIC16F723$|^PIC16LF723A$|^PIC16LF722A$|^PIC16F722A$|^PIC16LF727$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_72x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_72x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_72x/__Lib_ADC_72x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_72x")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_72x)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_72x/__Lib_ADC_72x.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16CR926$|^PIC16F818$|^PIC16F870$|^PIC16F871$|^PIC16F876$|^PIC16C925$|^PIC16F874A$|^PIC16F873A$|^PIC16F877$|^PIC16F876A$|^PIC16C926$|^PIC16F819$|^PIC16F872$|^PIC16F873$|^PIC16F874$|^PIC16F877A$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_A_C UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_A_C PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_C/__Lib_ADC_A_C.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_C")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_A_C)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_A_C/__Lib_ADC_A_C.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16C781$|^PIC16C782$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_78x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_78x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_78x/__Lib_ADC_78x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_78x")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_78x)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_78x/__Lib_ADC_78x.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F916$|^PIC16F917$|^PIC16F913$|^PIC16F914$|^PIC16F946$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_91X UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_91X PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_91X/__Lib_ADC_91X.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_91X")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_91X)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_91X/__Lib_ADC_91X.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16C770$|^PIC16C773$|^PIC16C771$|^PIC16C774$|^PIC16C717$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_77x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_77x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_77x/__Lib_ADC_77x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_77x")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_77x)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_ADC_77x/__Lib_ADC_77x.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.ADC  DEFAULT_MSG
                                    MikroC.ADC_LIBRARIES)


    set(MikroC.ADC_INCLUDE_DIRS ${MikroC.ADC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.ADC_LIBRARIES})
    
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

