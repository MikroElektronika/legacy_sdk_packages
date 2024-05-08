if (${MCU_NAME} MATCHES "^PIC18F27J13$|^PIC18LF26J13$|^PIC18F26J13$|^PIC18LF27J13$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34b45 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34b45 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34b45/__Lib_I2C_c34b45.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34b45")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34b45)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34b45/__Lib_I2C_c34b45.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F4553$|^PIC18F2455$|^PIC18F2458$|^PIC18LF2458$|^PIC18LF25K50$|^PIC18F45K50$|^PIC18LF2455$|^PIC18LF2550$|^PIC18LF4458$|^PIC18LF45K50$|^PIC18F4550$|^PIC18F2550$|^PIC18F25K50$|^PIC18LF24K50$|^PIC18F24K50$|^PIC18LF4553$|^PIC18LF2553$|^PIC18F2553$|^PIC18F4455$|^PIC18F4458$|^PIC18LF4455$|^PIC18LF4550$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b10 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b10 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b10/__Lib_I2C_b10.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b10")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b10)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b10/__Lib_I2C_b10.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F25K22$|^PIC18LF26K22$|^PIC18LF24K22$|^PIC18F26K22$|^PIC18F24K22$|^PIC18F23K22$|^PIC18LF23K22$|^PIC18LF25K22$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34b12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34b12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34b12/__Lib_I2C_c34b12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34b12")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34b12)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34b12/__Lib_I2C_c34b12.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF45J50$|^PIC18F46J50$|^PIC18LF46J50$|^PIC18LF46J53$|^PIC18F46J53$|^PIC18LF44J50$|^PIC18F47J53$|^PIC18F44J50$|^PIC18LF47J53$|^PIC18F45J50$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b45d01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b45d01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b45d01/__Lib_I2C_b45d01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b45d01")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b45d01)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b45d01/__Lib_I2C_b45d01.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF45K80$|^PIC18F8585$|^PIC18LF4620$|^PIC18LF8410$|^PIC18F24J10$|^PIC18F4585$|^PIC18F87J60$|^PIC18F8490$|^PIC18F2610$|^PIC18F83J90$|^PIC18F6680$|^PIC18F4510$|^PIC18F87J90$|^PIC18LF4580$|^PIC18F2620$|^PIC18C452$|^PIC18F66K80$|^PIC18LF2620$|^PIC18F2321$|^PIC18F6628$|^PIC18LF6410$|^PIC18LF4520$|^PIC18F2420$|^PIC18F248$|^PIC18F64J11$|^PIC18LF2510$|^PIC18LF26K80$|^PIC18LF65K80$|^PIC18F4221$|^PIC18LF4682$|^PIC18LF8310$|^PIC18LF4321$|^PIC18F4320$|^PIC18LF24J11$|^PIC18F24K20$|^PIC18F45K80$|^PIC18F2580$|^PIC18F8390$|^PIC18F65J90$|^PIC18F63J11$|^PIC18LF6390$|^PIC18LF8493$|^PIC18C858$|^PIC18F67J93$|^PIC18F87J72$|^PIC18F84J90$|^PIC18C252$|^PIC18F8525$|^PIC18F6493$|^PIC18LF4221$|^PIC18LF4480$|^PIC18LF6393$|^PIC18F44K20$|^PIC18F4410$|^PIC18C658$|^PIC18LF4685$|^PIC18F6310$|^PIC18LF25K80$|^PIC18LF4423$|^PIC18F2515$|^PIC18LF2680$|^PIC18F67J90$|^PIC18F25K20$|^PIC18F8720$|^PIC18C601$|^PIC18F8620$|^PIC18F2320$|^PIC18LF25J10$|^PIC18F4539$|^PIC18F45K20$|^PIC18F6393$|^PIC18LF2585$|^PIC18LF2520$|^PIC18F25J10$|^PIC18LF8490$|^PIC18LF2580$|^PIC18F2685$|^PIC18F6520$|^PIC18LF2321$|^PIC18F242$|^PIC18F85J11$|^PIC18F2682$|^PIC18LF4220$|^PIC18F8621$|^PIC18LF2320$|^PIC18LF66K80$|^PIC18F2585$|^PIC18F448$|^PIC18F86J93$|^PIC18F2520$|^PIC18LF4420$|^PIC18F4420$|^PIC18F87J93$|^PIC18LF25J11$|^PIC18F6621$|^PIC18F4620$|^PIC18LF4585$|^PIC18F66J93$|^PIC18F2680$|^PIC18LF2685$|^PIC18F86J72$|^PIC18F2523$|^PIC18LF2515$|^PIC18F4220$|^PIC18LF2682$|^PIC18F84J11$|^PIC18F2220$|^PIC18LF8520$|^PIC18F4682$|^PIC18F8520$|^PIC18F86J90$|^PIC18F25K80$|^PIC18F65K80$|^PIC18F2221$|^PIC18F6720$|^PIC18F66J90$|^PIC18F26K80$|^PIC18F65J11$|^PIC18F2410$|^PIC18F46K80$|^PIC18F83J11$|^PIC18F8310$|^PIC18F23K20$|^PIC18F2480$|^PIC18F85J90$|^PIC18LF2420$|^PIC18LF4523$|^PIC18F43K20$|^PIC18F46K20$|^PIC18F4520$|^PIC18LF2610$|^PIC18F258$|^PIC18F64J90$|^PIC18LF46K80$|^PIC18F26K20$|^PIC18F4685$|^PIC18LF8393$|^PIC18LF26J11$|^PIC18LF2410$|^PIC18F2423$|^PIC18F4439$|^PIC18F2539$|^PIC18LF6520$|^PIC18F2525$|^PIC18F6390$|^PIC18F2510$|^PIC18LF6493$|^PIC18F4523$|^PIC18F4423$|^PIC18LF2221$|^PIC18F4515$|^PIC18LF4320$|^PIC18F252$|^PIC18LF4680$|^PIC18LF6490$|^PIC18LF2423$|^PIC18F4525$|^PIC18F8393$|^PIC18F4321$|^PIC18LF24J10$|^PIC18F66J60$|^PIC18C242$|^PIC18F66J65$|^PIC18F8680$|^PIC18F4610$|^PIC18F4580$|^PIC18LF8720$|^PIC18LF2525$|^PIC18F6620$|^PIC18F26J11$|^PIC18F2439$|^PIC18F67J60$|^PIC18LF6628$|^PIC18LF4410$|^PIC18F6490$|^PIC18F8493$|^PIC18F452$|^PIC18F6525$|^PIC18LF4610$|^PIC18LF2523$|^PIC18F6410$|^PIC18F458$|^PIC18F6585$|^PIC18C801$|^PIC18LF2480$|^PIC18LF4515$|^PIC18LF4525$|^PIC18F86J60$|^PIC18F8410$|^PIC18F4680$|^PIC18LF2220$|^PIC18F63J90$|^PIC18LF4510$|^PIC18LF8390$|^PIC18F4480$|^PIC18F442$|^PIC18F24J11$|^PIC18C442$|^PIC18F25J11$|^PIC18F86J65$|^PIC18LF6310$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34/__Lib_I2C_c34.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34/__Lib_I2C_c34.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F96J94$|^PIC18F67J94$|^PIC18F87J94$|^PIC18F65J94$|^PIC18F66J94$|^PIC18F85J94$|^PIC18F97J94$|^PIC18F95J94$|^PIC18F86J94$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34d65_J94 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34d65_J94 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65_J94/__Lib_I2C_c34d65_J94.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65_J94")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34d65_J94)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65_J94/__Lib_I2C_c34d65_J94.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F67K22$|^PIC18F86K90$|^PIC18F87K90$|^PIC18F65K90$|^PIC18F66K90$|^PIC18F87K22$|^PIC18F66K22$|^PIC18F67K90$|^PIC18F86K22$|^PIC18F85K22$|^PIC18F85K90$|^PIC18F65K22$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34d65_k22_k90 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34d65_k22_k90 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65_k22_k90/__Lib_I2C_c34d65_k22_k90.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65_k22_k90")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34d65_k22_k90)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65_k22_k90/__Lib_I2C_c34d65_k22_k90.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF14K50$|^PIC18LF14K22$|^PIC18LF13K50$|^PIC18F13K50$|^PIC18F14K22$|^PIC18F14K50$|^PIC18F13K22$|^PIC18LF13K22$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b46 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b46 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b46/__Lib_I2C_b46.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b46")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b46)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b46/__Lib_I2C_b46.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F6722$|^PIC18F66J15$|^PIC18F86J55$|^PIC18F96J65$|^PIC18LF6622$|^PIC18F87J10$|^PIC18F66J10$|^PIC18F6527$|^PIC18F8622$|^PIC18F86J50$|^PIC18LF8622$|^PIC18F65J50$|^PIC18F8722$|^PIC18F65J15$|^PIC18F8723$|^PIC18F66J16$|^PIC18F86J11$|^PIC18F8628$|^PIC18F6723$|^PIC18LF8628$|^PIC18F6622$|^PIC18F87J11$|^PIC18LF6722$|^PIC18F8627$|^PIC18F67J11$|^PIC18F67J10$|^PIC18F66J11$|^PIC18LF8723$|^PIC18F97J60$|^PIC18LF8722$|^PIC18F96J60$|^PIC18LF6723$|^PIC18F86J16$|^PIC18F66J50$|^PIC18F8527$|^PIC18LF6527$|^PIC18F85J10$|^PIC18LF8627$|^PIC18LF8527$|^PIC18F65J10$|^PIC18F6627$|^PIC18F85J50$|^PIC18LF6627$|^PIC18F67J50$|^PIC18F86J10$|^PIC18F86J15$|^PIC18F66J55$|^PIC18F87J50$|^PIC18F85J15$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34d65 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34d65 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65/__Lib_I2C_c34d65.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34d65)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d65/__Lib_I2C_c34d65.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F44J10$|^PIC18LF43K22$|^PIC18F44J11$|^PIC18F44K22$|^PIC18F46K22$|^PIC18LF46J11$|^PIC18LF47J13$|^PIC18F43K22$|^PIC18F46J13$|^PIC18LF44J11$|^PIC18LF46J13$|^PIC18F45J11$|^PIC18LF44K22$|^PIC18LF45J11$|^PIC18F46J11$|^PIC18LF45J10$|^PIC18LF45K22$|^PIC18F47J13$|^PIC18F45K22$|^PIC18F45J10$|^PIC18LF46K22$|^PIC18LF44J10$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34d01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34d01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d01/__Lib_I2C_c34d01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d01")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34d01)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_c34d01/__Lib_I2C_c34d01.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F24J50$|^PIC18LF27J53$|^PIC18F26J53$|^PIC18LF25J50$|^PIC18LF26J53$|^PIC18F27J53$|^PIC18LF24J50$|^PIC18LF26J50$|^PIC18F25J50$|^PIC18F26J50$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b45 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b45 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b45/__Lib_I2C_b45.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b45")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b45)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_I2C_b45/__Lib_I2C_b45.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1566$|^PIC16LF1567$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c1234 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c1234 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c1234/__Lib_I2C_c1234.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c1234")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c1234)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c1234/__Lib_I2C_c1234.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1559$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_a3b4_b6 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_a3b4_b6 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a3b4_b6/__Lib_I2C_a3b4_b6.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a3b4_b6")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_a3b4_b6)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a3b4_b6/__Lib_I2C_a3b4_b6.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1947$|^PIC16F1527$|^PIC16F1526$|^PIC16LF1526$|^PIC16LF1527$|^PIC16F1946$|^PIC16LF1946$|^PIC16LF1947$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34_d65 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34_d65 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34_d65/__Lib_I2C_c34_d65.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34_d65")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34_d65)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34_d65/__Lib_I2C_c34_d65.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1829$|^PIC16LF1829$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b46b57 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b46b57 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b46b57/__Lib_I2C_b46b57.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b46b57")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b46b57)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b46b57/__Lib_I2C_b46b57.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1824$|^PIC16F1459$|^PIC16F1823$|^PIC16LF1459$|^PIC16F1454$|^PIC16LF1455$|^PIC16F1455$|^PIC16F1824$|^PIC16F1503$|^PIC16LF1454$|^PIC16LF1503$|^PIC16F1825$|^PIC16LF1823$|^PIC16LF1825$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c01/__Lib_I2C_c01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c01")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c01)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c01/__Lib_I2C_c01.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1827$|^PIC16F1847$|^PIC16LF1827$|^PIC16LF1847$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b14b25 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b14b25 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b14b25/__Lib_I2C_b14b25.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b14b25")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b14b25)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b14b25/__Lib_I2C_b14b25.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1826$|^PIC16LF1826$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b14 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b14 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b14/__Lib_I2C_b14.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b14")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b14)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b14/__Lib_I2C_b14.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1788$|^PIC16F1783$|^PIC16F1789$|^PIC16F1782$|^PIC16F1784$|^PIC16LF1786$|^PIC16F1788$|^PIC16F1787$|^PIC16LF1789$|^PIC16F1786$|^PIC16LF1782$|^PIC16LF1783$|^PIC16LF1784$|^PIC16LF1787$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34_1/__Lib_I2C_c34_1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34_1")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34_1)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34_1/__Lib_I2C_c34_1.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1938$|^PIC16LF1519$|^PIC16F1519$|^PIC16F1518$|^PIC16F1934$|^PIC16LF1516$|^PIC16LF1934$|^PIC16LF1938$|^PIC16LF1518$|^PIC16F1512$|^PIC16F1933$|^PIC16LF1939$|^PIC16F1516$|^PIC16F1513$|^PIC16LF1517$|^PIC16F1937$|^PIC16LF1936$|^PIC16LF1513$|^PIC16LF1933$|^PIC16F1936$|^PIC16LF1937$|^PIC16F1517$|^PIC16LF1512$|^PIC16F1939$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34/__Lib_I2C_c34.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_c34/__Lib_I2C_c34.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1508$|^PIC16LF1828$|^PIC16F1509$|^PIC16F1828$|^PIC16LF1509$|^PIC16F1508$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b46 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b46 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b46/__Lib_I2C_b46.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b46")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b46)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_b46/__Lib_I2C_b46.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC12LF1840$|^PIC12F1840$|^PIC12F1822$|^PIC12LF1822$|^PIC12LF1552$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_a12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_a12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a12/__Lib_I2C_a12.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a12")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_a12)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a12/__Lib_I2C_a12.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1554$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_a3c1_c0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_a3c1_c0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a3c1_c0/__Lib_I2C_a3c1_c0.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a3c1_c0")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_a3c1_c0)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_I2C_a3c1_c0/__Lib_I2C_a3c1_c0.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16C770$|^PIC16C771$|^PIC16C717$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_b24 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_b24 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_I2C_b24/__Lib_I2C_b24.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_I2C_b24")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_b24)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_I2C_b24/__Lib_I2C_b24.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F884$|^PIC16F887$|^PIC16F882$|^PIC16F747$|^PIC16F874$|^PIC16F872$|^PIC16F877$|^PIC16C773$|^PIC16F737$|^PIC16F873A$|^PIC16F777$|^PIC16F883$|^PIC16F877A$|^PIC16F767$|^PIC16F874A$|^PIC16F876$|^PIC16F886$|^PIC16C774$|^PIC16F876A$|^PIC16F873$")


    if (NOT TARGET MikroC.I2C )
        add_library(__Lib_I2C_c34 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_I2C_c34 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_I2C_c34/__Lib_I2C_c34.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_I2C_c34")

    set(MikroC.I2C_DEFINITIONS )


    if (NOT TARGET MikroC.I2C )
        add_library(MikroC.I2C INTERFACE)
    endif()

    target_link_libraries(MikroC.I2C INTERFACE __Lib_I2C_c34)
    set(MikroC.I2C_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16/__Lib_I2C_c34/__Lib_I2C_c34.mcl\"")


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

