if (${MCU_NAME} MATCHES "^PIC18LF1320$|^PIC18C801$|^PIC18F1220$|^PIC18C601$|^PIC18LF1220$|^PIC18F1320$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_b3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_b3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_b3/__Lib_PWM_b3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_b3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_b3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_b3/__Lib_PWM_b3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F65K90$|^PIC18F85K22$|^PIC18F85K90$|^PIC18F65K22$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_65K90 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_65K90 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_65K90/__Lib_PWM_65K90.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_65K90")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_65K90)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_65K90/__Lib_PWM_65K90.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF14K50$|^PIC18LF14K22$|^PIC18LF13K50$|^PIC18F13K50$|^PIC18F14K22$|^PIC18F14K50$|^PIC18F13K22$|^PIC18LF13K22$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c5 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c5 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c5/__Lib_PWM_c5.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c5")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c5)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c5/__Lib_PWM_c5.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F458$|^PIC18LF4480$|^PIC18F4682$|^PIC18LF4580$|^PIC18F4480$|^PIC18F4585$|^PIC18LF4585$|^PIC18F4685$|^PIC18F4680$|^PIC18LF4682$|^PIC18F4580$|^PIC18F448$|^PIC18LF4680$|^PIC18LF4685$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c2d4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c2d4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c2d4/__Lib_PWM_c2d4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c2d4")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c2d4)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c2d4/__Lib_PWM_c2d4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF26K80$|^PIC18F25K80$|^PIC18F26K80$|^PIC18LF25K80$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_b4c2675 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_b4c2675 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_b4c2675/__Lib_PWM_b4c2675.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_b4c2675")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_b4c2675)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_b4c2675/__Lib_PWM_b4c2675.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F8585$|^PIC18LF4620$|^PIC18F24J10$|^PIC18LF4458$|^PIC18F8490$|^PIC18F2610$|^PIC18F83J90$|^PIC18F2553$|^PIC18F6680$|^PIC18F87J90$|^PIC18F4510$|^PIC18F2620$|^PIC18LF2620$|^PIC18C452$|^PIC18F45K50$|^PIC18F2321$|^PIC18LF4520$|^PIC18F2420$|^PIC18F4550$|^PIC18F64J11$|^PIC18LF2510$|^PIC18LF45J10$|^PIC18F4221$|^PIC18LF4321$|^PIC18F4320$|^PIC18F24K20$|^PIC18F8390$|^PIC18F44J10$|^PIC18F65J90$|^PIC18F63J11$|^PIC18F4458$|^PIC18LF6390$|^PIC18LF8493$|^PIC18F67J93$|^PIC18F87J72$|^PIC18LF4455$|^PIC18F25K50$|^PIC18F84J90$|^PIC18C252$|^PIC18F6493$|^PIC18LF4331$|^PIC18LF25K50$|^PIC18LF4221$|^PIC18LF6393$|^PIC18F44K20$|^PIC18F4410$|^PIC18LF4423$|^PIC18LF2458$|^PIC18F2515$|^PIC18LF24K50$|^PIC18F67J90$|^PIC18F25K20$|^PIC18LF25J10$|^PIC18F2320$|^PIC18F45K20$|^PIC18LF2550$|^PIC18F6393$|^PIC18LF2520$|^PIC18F25J10$|^PIC18LF8490$|^PIC18LF2321$|^PIC18F242$|^PIC18F85J11$|^PIC18LF4220$|^PIC18F45J10$|^PIC18LF2320$|^PIC18F86J93$|^PIC18F2520$|^PIC18LF4420$|^PIC18LF45K50$|^PIC18F4420$|^PIC18F87J93$|^PIC18LF4550$|^PIC18F2550$|^PIC18F4620$|^PIC18F66J93$|^PIC18F86J72$|^PIC18LF2553$|^PIC18LF4553$|^PIC18LF2515$|^PIC18F2523$|^PIC18F4220$|^PIC18F84J11$|^PIC18F2220$|^PIC18LF2431$|^PIC18F4553$|^PIC18F86J90$|^PIC18F24K50$|^PIC18F2221$|^PIC18F2455$|^PIC18F66J90$|^PIC18F65J11$|^PIC18F2331$|^PIC18F2410$|^PIC18F83J11$|^PIC18F23K20$|^PIC18LF2420$|^PIC18F85J90$|^PIC18LF4523$|^PIC18F43K20$|^PIC18F46K20$|^PIC18F4520$|^PIC18LF2610$|^PIC18F64J90$|^PIC18F26K20$|^PIC18LF8393$|^PIC18F2431$|^PIC18LF2410$|^PIC18F2423$|^PIC18F2525$|^PIC18F6390$|^PIC18F2510$|^PIC18LF6493$|^PIC18F4523$|^PIC18F4423$|^PIC18LF2221$|^PIC18F4515$|^PIC18LF4431$|^PIC18LF4320$|^PIC18F252$|^PIC18LF6490$|^PIC18LF2423$|^PIC18F4525$|^PIC18F8393$|^PIC18F4321$|^PIC18LF24J10$|^PIC18C242$|^PIC18F8680$|^PIC18F4610$|^PIC18LF2525$|^PIC18LF2455$|^PIC18LF44J10$|^PIC18LF4410$|^PIC18F4431$|^PIC18F6490$|^PIC18LF2331$|^PIC18F8493$|^PIC18F452$|^PIC18LF4610$|^PIC18LF2523$|^PIC18F2458$|^PIC18F6585$|^PIC18LF4515$|^PIC18LF4525$|^PIC18LF2220$|^PIC18F63J90$|^PIC18LF4510$|^PIC18LF8390$|^PIC18F4455$|^PIC18F442$|^PIC18C442$|^PIC18F4331$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c21/__Lib_PWM_c21.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c21")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c21/__Lib_PWM_c21.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18LF26J11$|^PIC18F26J11$|^PIC18F44J11$|^PIC18LF46J11$|^PIC18LF25J11$|^PIC18LF46J50$|^PIC18F44J50$|^PIC18LF24J11$|^PIC18LF44J11$|^PIC18F24J11$|^PIC18LF44J50$|^PIC18LF25J50$|^PIC18F25J50$|^PIC18F45J11$|^PIC18F25J11$|^PIC18LF24J50$|^PIC18F45J50$|^PIC18LF26J50$|^PIC18LF45J11$|^PIC18F24J50$|^PIC18F46J11$|^PIC18F26J50$|^PIC18LF45J50$|^PIC18F46J50$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_J11 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_J11 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_J11/__Lib_PWM_J11.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_J11")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_J11)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_J11/__Lib_PWM_J11.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F4450$|^PIC18F2682$|^PIC18F2450$|^PIC18F2685$|^PIC18F2580$|^PIC18F2480$|^PIC18LF2580$|^PIC18LF2480$|^PIC18LF2585$|^PIC18LF4450$|^PIC18F248$|^PIC18F258$|^PIC18LF2450$|^PIC18F2680$|^PIC18LF2680$|^PIC18F2585$|^PIC18LF2685$|^PIC18LF2682$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c2/__Lib_PWM_c2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_c2/__Lib_PWM_c2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F67K22$|^PIC18F86K90$|^PIC18F87K90$|^PIC18F66K90$|^PIC18F87K22$|^PIC18F66K22$|^PIC18F67K90$|^PIC18F86K22$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_K90 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_K90 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_K90/__Lib_PWM_K90.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_K90")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_K90)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_K90/__Lib_PWM_K90.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC18F66K80$|^PIC18LF65K80$|^PIC18LF45K80$|^PIC18LF66K80$|^PIC18F45K80$|^PIC18F65K80$|^PIC18F46K80$|^PIC18LF46K80$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_d4c2675 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_d4c2675 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_d4c2675/__Lib_PWM_d4c2675.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_d4c2675")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_d4c2675)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PWM_d4c2675/__Lib_PWM_d4c2675.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1783$|^PIC16F1782$|^PIC16LF1782$|^PIC16LF1783$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21b03 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21b03 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21b03/__Lib_PWM_c21b03.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21b03")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21b03)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21b03/__Lib_PWM_c21b03.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1826$|^PIC16LF1826$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_b3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_b3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b3/__Lib_PWM_b3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_b3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b3/__Lib_PWM_b3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1823$|^PIC16LF1823$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c5 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c5 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c5/__Lib_PWM_c5.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c5")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c5)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c5/__Lib_PWM_c5.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC12LF1501$|^PIC12F1501$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_150x_a UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_150x_a PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_150x_a/__Lib_PWM_150x_a.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_150x_a")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_150x_a)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_150x_a/__Lib_PWM_150x_a.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1947$|^PIC16F1946$|^PIC16LF1946$|^PIC16LF1947$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21g034 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21g034 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21g034/__Lib_PWM_c21g034.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21g034")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21g034)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21g034/__Lib_PWM_c21g034.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21a0123b0123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21a0123b0123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21a0123b0123/__Lib_PWM_c21a0123b0123.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21a0123b0123")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21a0123b0123)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21a0123b0123/__Lib_PWM_c21a0123b0123.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC12F1612$|^PIC12LF1612$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_a02 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_a02 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a02/__Lib_PWM_a02.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a02")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_a02)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a02/__Lib_PWM_a02.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1827$|^PIC16LF1827$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_b36a34 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_b36a34 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b36a34/__Lib_PWM_b36a34.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b36a34")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_b36a34)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b36a34/__Lib_PWM_b36a34.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1788$|^PIC16LF1786$|^PIC16F1788$|^PIC16F1786$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c216b035 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c216b035 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c216b035/__Lib_PWM_c216b035.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c216b035")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c216b035)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c216b035/__Lib_PWM_c216b035.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC12LF1840$|^PIC12F1840$|^PIC12F1822$|^PIC12LF1822$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_a2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_a2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a2/__Lib_PWM_a2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_a2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a2/__Lib_PWM_a2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC12LF1572$|^PIC12F1572$|^PIC12LF1571$|^PIC12F1571$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_a025 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_a025 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a025/__Lib_PWM_a025.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a025")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_a025)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_a025/__Lib_PWM_a025.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1824$|^PIC16F1824$|^PIC16F1825$|^PIC16LF1825$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c53a2c1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c53a2c1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53a2c1/__Lib_PWM_c53a2c1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53a2c1")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c53a2c1)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53a2c1/__Lib_PWM_c53a2c1.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c23 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c23 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c23/__Lib_PWM_c23.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c23")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c23)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c23/__Lib_PWM_c23.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1828$|^PIC16F1829$|^PIC16F1828$|^PIC16F1829LIN$|^PIC16LF1829$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c53a2c6 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c53a2c6 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53a2c6/__Lib_PWM_c53a2c6.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53a2c6")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c53a2c6)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53a2c6/__Lib_PWM_c53a2c6.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1613$|^PIC16F1613$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c53 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c53 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53/__Lib_PWM_c53.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c53)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c53/__Lib_PWM_c53.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16LF1508$|^PIC16F1509$|^PIC16LF1507$|^PIC16LF1509$|^PIC16F1507$|^PIC16F1508$|^PIC16F1503$|^PIC16LF1503$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_150x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_150x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_150x/__Lib_PWM_150x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_150x")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_150x)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_150x/__Lib_PWM_150x.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1933$|^PIC16F1936$|^PIC16F1938$|^PIC16LF1936$|^PIC16LF1938$|^PIC16LF1933$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c216b0a4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c216b0a4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c216b0a4/__Lib_PWM_c216b0a4.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c216b0a4")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c216b0a4)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c216b0a4/__Lib_PWM_c216b0a4.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1847$|^PIC16LF1847$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_b36 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_b36 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b36/__Lib_PWM_b36.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b36")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_b36)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_b36/__Lib_PWM_b36.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1939$|^PIC16LF1934$|^PIC16F1934$|^PIC16LF1939$|^PIC16F1937$|^PIC16LF1937$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21e0d1e2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21e0d1e2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21e0d1e2/__Lib_PWM_c21e0d1e2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21e0d1e2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21e0d1e2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21e0d1e2/__Lib_PWM_c21e0d1e2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1513$|^PIC16LF1519$|^PIC16F1516$|^PIC16F1519$|^PIC16LF1513$|^PIC16LF1516$|^PIC16F1512$|^PIC16F1517$|^PIC16LF1517$|^PIC16LF1512$|^PIC16LF1518$|^PIC16F1518$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21/__Lib_PWM_c21.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21/__Lib_PWM_c21.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1527$|^PIC16F1526$|^PIC16LF1526$|^PIC16LF1527$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21g034e65432 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21g034e65432 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21g034e65432/__Lib_PWM_c21g034e65432.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21g034e65432")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21g034e65432)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21g034e65432/__Lib_PWM_c21g034e65432.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_145x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_145x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_145x/__Lib_PWM_145x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_145x")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_145x)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_145x/__Lib_PWM_145x.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F1789$|^PIC16F1784$|^PIC16F1787$|^PIC16LF1789$|^PIC16LF1784$|^PIC16LF1787$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21e0b035 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21e0b035 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21e0b035/__Lib_PWM_c21e0b035.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21e0b035")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21e0b035)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PWM_c21e0b035/__Lib_PWM_c21e0b035.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F627$|^PIC16F648A$|^PIC16F627A$|^PIC16F628$|^PIC16F716$|^PIC16F628A$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_b3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_b3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b3/__Lib_PWM_b3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_b3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b3/__Lib_PWM_b3.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F818$|^PIC16F819$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_b2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_b2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b2/__Lib_PWM_b2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_b2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b2/__Lib_PWM_b2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F916$|^PIC16F684$|^PIC16HV616$|^PIC16F616$|^PIC16F785$|^PIC16F913$|^PIC16HV785$|^PIC16F753$|^PIC16F685$|^PIC16F721$|^PIC16F690$|^PIC16F720$|^PIC16LF720$|^PIC16HV753$|^PIC16LF721$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c5 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c5 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c5/__Lib_PWM_c5.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c5")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c5)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c5/__Lib_PWM_c5.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F917$|^PIC16F914$|^PIC16F946$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c5d2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c5d2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c5d2/__Lib_PWM_c5d2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c5d2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c5d2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c5d2/__Lib_PWM_c5d2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC12F752$|^PIC12HV752$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_a2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_a2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_a2/__Lib_PWM_a2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_a2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_a2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_a2/__Lib_PWM_a2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_a01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_a01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_a01/__Lib_PWM_a01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_a01")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_a01)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_a01/__Lib_PWM_a01.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC12F683$|^PIC12F617$|^PIC12HV615$|^PIC12F615$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_gpio2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_gpio2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_gpio2/__Lib_PWM_gpio2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_gpio2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_gpio2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_gpio2/__Lib_PWM_gpio2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F87$|^PIC16F88$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_b0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_b0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b0/__Lib_PWM_b0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b0")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_b0)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_b0/__Lib_PWM_b0.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16F884$|^PIC16F887$|^PIC16F74$|^PIC16F727$|^PIC16F882$|^PIC16F726$|^PIC16F874$|^PIC16F877$|^PIC16F873A$|^PIC16F723A$|^PIC16F722$|^PIC16F76$|^PIC16F73$|^PIC16F883$|^PIC16LF726$|^PIC16LF722$|^PIC16F877A$|^PIC16F77$|^PIC16F707$|^PIC16F874A$|^PIC16F876$|^PIC16LF724$|^PIC16F886$|^PIC16F723$|^PIC16F724$|^PIC16F876A$|^PIC16LF722A$|^PIC16LF723A$|^PIC16LF707$|^PIC16LF727$|^PIC16F722A$|^PIC16LF723$|^PIC16F873$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c21 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c21 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c21/__Lib_PWM_c21.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c21")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c21)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c21/__Lib_PWM_c21.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC16C74A$|^PIC16CR62$|^PIC16F870$|^PIC16C73A$|^PIC16C62A$|^PIC16C72$|^PIC16C67$|^PIC16CR65$|^PIC16C63$|^PIC16F872$|^PIC16C62B$|^PIC16C77$|^PIC16C773$|^PIC16C63A$|^PIC16C923$|^PIC16C924$|^PIC16F72$|^PIC16C72A$|^PIC16C925$|^PIC16C926$|^PIC16CR63$|^PIC16C73B$|^PIC16C765$|^PIC16CR926$|^PIC16C65A$|^PIC16C66$|^PIC16CR64$|^PIC16C745$|^PIC16C74B$|^PIC16C64A$|^PIC16C774$|^PIC16F871$|^PIC16CR72$|^PIC16C65B$|^PIC16C76$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_c2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_c2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c2/__Lib_PWM_c2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_c2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_PWM_c2/__Lib_PWM_c2.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM  DEFAULT_MSG
                                    MikroC.PWM_LIBRARIES)


    set(MikroC.PWM_INCLUDE_DIRS ${MikroC.PWM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM_LIBRARIES})
    
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

