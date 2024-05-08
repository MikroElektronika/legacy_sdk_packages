if (${MCU_NAME} MATCHES "^PIC32MX210F016D$|^PIC32MX230F064D$|^PIC32MX250F128D$|^PIC32MX230F256D$|^PIC32MX220F032D$|^PIC32MX270F256D$|^PIC32MX270F256DB$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX2xxFxxxD UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX2xxFxxxD PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxD/__Lib_PPS_P32MX2xxFxxxD.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxD")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX2xxFxxxD)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxD/__Lib_PPS_P32MX2xxFxxxD.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX210F016C$|^PIC32MX230F064C$|^PIC32MX250F128C$|^PIC32MX220F032C$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX2xxFxxxC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX2xxFxxxC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxC/__Lib_PPS_P32MX2xxFxxxC.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxC")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX2xxFxxxC)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxC/__Lib_PPS_P32MX2xxFxxxC.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX170F512H$|^PIC32MX120F064H$|^PIC32MX130F128H$|^PIC32MX150F256H$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX_64GPD UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX_64GPD PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_64GPD/__Lib_PPS_P32MX_64GPD.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_64GPD")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX_64GPD)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_64GPD/__Lib_PPS_P32MX_64GPD.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX550F256H$|^PIC32MX570F512H$|^PIC32MX230F128H$|^PIC32MX530F128H$|^PIC32MX250F256H$|^PIC32MX270F512H$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX_64USB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX_64USB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_64USB/__Lib_PPS_P32MX_64USB.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_64USB")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX_64USB)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_64USB/__Lib_PPS_P32MX_64USB.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX350F128H$|^PIC32MX350F256H$|^PIC32MX370F512H$|^PIC32MX330F064H$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX_3xx_64GPD UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX_3xx_64GPD PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_3xx_64GPD/__Lib_PPS_P32MX_3xx_64GPD.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_3xx_64GPD")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX_3xx_64GPD)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_3xx_64GPD/__Lib_PPS_P32MX_3xx_64GPD.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX470F512L$|^PIC32MX450F256L$|^PIC32MX450F128L$|^PIC32MX470F512LB$|^PIC32MX430F064L$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX_4xx_100USB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX_4xx_100USB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_4xx_100USB/__Lib_PPS_P32MX_4xx_100USB.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_4xx_100USB")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX_4xx_100USB)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_4xx_100USB/__Lib_PPS_P32MX_4xx_100USB.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX110F016D$|^PIC32MX150F128D$|^PIC32MX130F064D$|^PIC32MX170F256D$|^PIC32MX120F032D$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX1xxFxxxD UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX1xxFxxxD PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxD/__Lib_PPS_P32MX1xxFxxxD.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxD")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX1xxFxxxD)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxD/__Lib_PPS_P32MX1xxFxxxD.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX450F256H$|^PIC32MX450F128H$|^PIC32MX470F512H$|^PIC32MX450F256HB$|^PIC32MX430F064H$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX_4xx_64USB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX_4xx_64USB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_4xx_64USB/__Lib_PPS_P32MX_4xx_64USB.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_4xx_64USB")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX_4xx_64USB)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_4xx_64USB/__Lib_PPS_P32MX_4xx_64USB.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX370F512L$|^PIC32MX330F064L$|^PIC32MX350F256L$|^PIC32MX350F128L$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX_3xx_100GPD UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX_3xx_100GPD PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_3xx_100GPD/__Lib_PPS_P32MX_3xx_100GPD.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_3xx_100GPD")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX_3xx_100GPD)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_3xx_100GPD/__Lib_PPS_P32MX_3xx_100GPD.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX130F128L$|^PIC32MX150F256L$|^PIC32MX170F512L$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX_100GPD UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX_100GPD PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_100GPD/__Lib_PPS_P32MX_100GPD.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_100GPD")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX_100GPD)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_100GPD/__Lib_PPS_P32MX_100GPD.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX130F256D$|^PIC32MX150F128B$|^PIC32MX130F256B$|^PIC32MX170F256B$|^PIC32MX120F032B$|^PIC32MX130F064B$|^PIC32MX110F016B$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX1xxFxxxB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX1xxFxxxB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxB/__Lib_PPS_P32MX1xxFxxxB.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxB")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX1xxFxxxB)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxB/__Lib_PPS_P32MX1xxFxxxB.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX120F032C$|^PIC32MX150F128C$|^PIC32MX110F016C$|^PIC32MX130F064C$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX1xxFxxxC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX1xxFxxxC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxC/__Lib_PPS_P32MX1xxFxxxC.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxC")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX1xxFxxxC)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX1xxFxxxC/__Lib_PPS_P32MX1xxFxxxC.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX220F032B$|^PIC32MX230F064B$|^PIC32MX230F256B$|^PIC32MX210F016B$|^PIC32MX250F128B$|^PIC32MX270F256B$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX2xxFxxxB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX2xxFxxxB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxB/__Lib_PPS_P32MX2xxFxxxB.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxB")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX2xxFxxxB)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX2xxFxxxB/__Lib_PPS_P32MX2xxFxxxB.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX530F128L$|^PIC32MX230F128L$|^PIC32MX570F512L$|^PIC32MX250F256L$|^PIC32MX270F512L$|^PIC32MX550F256L$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MX_100USB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MX_100USB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_100USB/__Lib_PPS_P32MX_100USB.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_100USB")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MX_100USB)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_PPS_P32MX_100USB/__Lib_PPS_P32MX_100USB.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ1024ECG064$|^PIC32MZ2048ECG064$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_64 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_64 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_64/__Lib_PPS_P32MZ_64.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_64")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_64)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_64/__Lib_PPS_P32MZ_64.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ1024ECH064$|^PIC32MZ1024ECM064$|^PIC32MZ2048ECH064$|^PIC32MZ2048ECM064$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_64CAN UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_64CAN PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_64CAN/__Lib_PPS_P32MZ_64CAN.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_64CAN")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_64CAN)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_64CAN/__Lib_PPS_P32MZ_64CAN.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ2048ECH124$|^PIC32MZ1024ECM144$|^PIC32MZ1024ECH124$|^PIC32MZ2048ECM144$|^PIC32MZ2048ECH144$|^PIC32MZ2048ECM124$|^PIC32MZ1024ECM124$|^PIC32MZ1024ECH144$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_124_144CAN UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_124_144CAN PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_124_144CAN/__Lib_PPS_P32MZ_124_144CAN.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_124_144CAN")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_124_144CAN)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_124_144CAN/__Lib_PPS_P32MZ_124_144CAN.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ1024ECH100$|^PIC32MZ1024ECM100$|^PIC32MZ2048ECH100$|^PIC32MZ2048ECM100$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_100CAN UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_100CAN PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_100CAN/__Lib_PPS_P32MZ_100CAN.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_100CAN")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_100CAN)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_100CAN/__Lib_PPS_P32MZ_100CAN.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ2048ECG100$|^PIC32MZ1024ECG100$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_100 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_100 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_100/__Lib_PPS_P32MZ_100.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_100")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_100)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_100/__Lib_PPS_P32MZ_100.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ1024ECG144$|^PIC32MZ1024ECG124$|^PIC32MZ2048ECG124$|^PIC32MZ2048ECG144$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_124_144 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_124_144 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_124_144/__Lib_PPS_P32MZ_124_144.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_124_144")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_124_144)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_PPS_P32MZ_124_144/__Lib_PPS_P32MZ_124_144.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ1024EFE064$|^PIC32MZ1024EFG064$|^PIC32MZ2048EFG064$|^PIC32MZ0512EFE064$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_64 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_64 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_64/__Lib_PPS_P32MZ_64.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_64")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_64)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_64/__Lib_PPS_P32MZ_64.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ1024EFK064$|^PIC32MZ1024EFH064$|^PIC32MZ0512EFF064$|^PIC32MZ1024EFM064$|^PIC32MZ2048EFM064$|^PIC32MZ0512EFK064$|^PIC32MZ2048EFH064$|^PIC32MZ1024EFF064$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_64CAN UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_64CAN PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_64CAN/__Lib_PPS_P32MZ_64CAN.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_64CAN")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_64CAN)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_64CAN/__Lib_PPS_P32MZ_64CAN.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ1024EFK124$|^PIC32MZ1024EFM124$|^PIC32MZ0512EFF144$|^PIC32MZ1024EFH124$|^PIC32MZ2048EFM124$|^PIC32MZ2048EFH144$|^PIC32MZ1024EFM144$|^PIC32MZ1024EFF124$|^PIC32MZ0512EFF124$|^PIC32MZ0512EFK144$|^PIC32MZ0512EFK124$|^PIC32MZ1024EFK144$|^PIC32MZ2048EFH124$|^PIC32MZ1024EFF144$|^PIC32MZ1024EFH144$|^PIC32MZ2048EFM144$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_124_144CAN UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_124_144CAN PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_124_144CAN/__Lib_PPS_P32MZ_124_144CAN.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_124_144CAN")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_124_144CAN)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_124_144CAN/__Lib_PPS_P32MZ_124_144CAN.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ2048EFM100$|^PIC32MZ0512EFK100$|^PIC32MZ1024EFF100$|^PIC32MZ2048EFH100$|^PIC32MZ0512EFF100$|^PIC32MZ1024EFM100$|^PIC32MZ1024EFH100$|^PIC32MZ1024EFK100$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_100CAN UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_100CAN PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_100CAN/__Lib_PPS_P32MZ_100CAN.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_100CAN")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_100CAN)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_100CAN/__Lib_PPS_P32MZ_100CAN.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ1024EFE100$|^PIC32MZ0512EFE100$|^PIC32MZ2048EFG100$|^PIC32MZ1024EFG100$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_100 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_100 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_100/__Lib_PPS_P32MZ_100.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_100")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_100)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_100/__Lib_PPS_P32MZ_100.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ0512EFE144$|^PIC32MZ2048EFG124$|^PIC32MZ1024EFE144$|^PIC32MZ1024EFG144$|^PIC32MZ1024EFG124$|^PIC32MZ2048EFG144$|^PIC32MZ0512EFE124$|^PIC32MZ1024EFE124$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P32MZ_124_144 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P32MZ_124_144 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_124_144/__Lib_PPS_P32MZ_124_144.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_124_144")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P32MZ_124_144)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_PPS_P32MZ_124_144/__Lib_PPS_P32MZ_124_144.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Peripheral_Pin_Select  DEFAULT_MSG
                                    MikroC.Peripheral_Pin_Select_LIBRARIES)


    set(MikroC.Peripheral_Pin_Select_INCLUDE_DIRS ${MikroC.Peripheral_Pin_Select_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Peripheral_Pin_Select_LIBRARIES})
    
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

