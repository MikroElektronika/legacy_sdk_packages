if (${MCU_NAME} MATCHES "^dsPIC33EP128GS705$|^dsPIC33EP128GS805$|^dsPIC33EP64GS805$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXXGS705_805 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXXGS705_805 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS705_805/__Lib_PPS_33EPXXXGS705_805.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS705_805")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXXGS705_805)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS705_805/__Lib_PPS_33EPXXXGS705_805.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64MC203$|^dsPIC33EP32MC203$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPxxMC203 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPxxMC203 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxMC203/__Lib_PPS_33EPxxMC203.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxMC203")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPxxMC203)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxMC203/__Lib_PPS_33EPxxMC203.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ32GA004$|^PIC24FJ48GA004$|^PIC24FJ16GA004$|^PIC24FJ64GA004$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ64GA004_DPC44 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ64GA004_DPC44 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA004_DPC44/__Lib_PPS_p24FJ64GA004_DPC44.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA004_DPC44")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ64GA004_DPC44)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA004_DPC44/__Lib_PPS_p24FJ64GA004_DPC44.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGA202 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGA202 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA202/__Lib_PPS_24FJXXXGA202.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA202")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGA202)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA202/__Lib_PPS_24FJXXXGA202.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ64GP804$|^dsPIC33FJ128GP804$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_GP_02_04_DPC44A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_GP_02_04_DPC44A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC44A/__Lib_PPS_p33FJ_GP_02_04_DPC44A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC44A")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_GP_02_04_DPC44A)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC44A/__Lib_PPS_p33FJ_GP_02_04_DPC44A.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA306$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJ128GA306 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJ128GA306 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA306/__Lib_PPS_24FJ128GA306.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA306")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJ128GA306)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA306/__Lib_PPS_24FJ128GA306.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ12GP201$|^PIC24HJ12GP201$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC18 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC18 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC18/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC18.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC18")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24HJ_33FJ_12GP201_202_DPC18)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC18/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC18.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256GA702$|^PIC24FJ64GA702$|^PIC24FJ128GA702$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGA702 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGA702 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA702/__Lib_PPS_24FJXXXGA702.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA702")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGA702)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA702/__Lib_PPS_24FJXXXGA702.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128GS706$|^dsPIC33EP128GS808$|^dsPIC33EP64GS808$|^dsPIC33EP128GS708$|^dsPIC33EP128GS806$|^dsPIC33EP64GS708$|^dsPIC33EP64GS806$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXXGS70x_80x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXXGS70x_80x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS70x_80x/__Lib_PPS_33EPXXXGS70x_80x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS70x_80x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXXGS70x_80x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS70x_80x/__Lib_PPS_33EPXXXGS70x_80x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24HJ12GP202$|^dsPIC33FJ12GP202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC28/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24HJ_33FJ_12GP201_202_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC28/__Lib_PPS_p24HJ_33FJ_12GP201_202_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP512GP202$|^PIC24EP64GP202$|^PIC24EP256GP202$|^PIC24EP128GP202$|^PIC24EP32GP202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24EPXXXGP202 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24EPXXXGP202 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP202/__Lib_PPS_24EPXXXGP202.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP202")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24EPXXXGP202)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP202/__Lib_PPS_24EPXXXGP202.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512MC806$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33EP512MC806 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33EP512MC806 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MC806/__Lib_PPS_p33EP512MC806.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MC806")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33EP512MC806)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MC806/__Lib_PPS_p33EP512MC806.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ32MC102$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXMC102 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXMC102 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC102/__Lib_PPS_24FJXXMC102.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC102")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXMC102)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC102/__Lib_PPS_24FJXXMC102.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512MU814$|^dsPIC33EP512MU810$|^dsPIC33EP256MU814$|^dsPIC33EP256MU810$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33EP512MU810 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33EP512MU810 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MU810/__Lib_PPS_p33EP512MU810.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MU810")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33EP512MU810)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MU810/__Lib_PPS_p33EP512MU810.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP256MU806$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33EP512MU806 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33EP512MU806 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MU806/__Lib_PPS_p33EP512MU806.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MU806")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33EP512MU806)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512MU806/__Lib_PPS_p33EP512MU806.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512GP806$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33EP512GP806 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33EP512GP806 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512GP806/__Lib_PPS_p33EP512GP806.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512GP806")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33EP512GP806)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33EP512GP806/__Lib_PPS_p33EP512GP806.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256DA106$|^PIC24FJ64GB106$|^PIC24FJ128GB206$|^PIC24FJ128GB106$|^PIC24FJ256GB106$|^PIC24FJ128DA106$|^PIC24FJ256DA206$|^PIC24FJ128DA206$|^PIC24FJ192GB106$|^PIC24FJ256GB206$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ256_GA_GB_110_DPC64B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ256_GA_GB_110_DPC64B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC64B/__Lib_PPS_p24FJ256_GA_GB_110_DPC64B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC64B")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ256_GA_GB_110_DPC64B)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC64B/__Lib_PPS_p24FJ256_GA_GB_110_DPC64B.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ64MC804$|^dsPIC33FJ128MC804$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_MC_02_04_DPC44A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_MC_02_04_DPC44A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC44A/__Lib_PPS_p33FJ_MC_02_04_DPC44A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC44A")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_MC_02_04_DPC44A)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC44A/__Lib_PPS_p33FJ_MC_02_04_DPC44A.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP32GS504$|^dsPIC33EP16GS505$|^dsPIC33EP64GS505$|^dsPIC33EP16GS504$|^dsPIC33EP32GS505$|^dsPIC33EP64GS504$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXGS504_505 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXGS504_505 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS504_505/__Lib_PPS_33EPXXGS504_505.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS504_505")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXGS504_505)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS504_505/__Lib_PPS_33EPXXGS504_505.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ512GB606$|^PIC24FJ1024GB606$|^PIC24FJ256GB606$|^PIC24FJ128GB606$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGB606 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGB606 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB606/__Lib_PPS_24FJXXXGB606.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB606")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGB606)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB606/__Lib_PPS_24FJXXXGB606.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA106$|^PIC24FJ128GA106$|^PIC24FJ256GA106$|^PIC24FJ192GA106$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ256_GA_GB_110_DPC64 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ256_GA_GB_110_DPC64 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC64/__Lib_PPS_p24FJ256_GA_GB_110_DPC64.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC64")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ256_GA_GB_110_DPC64)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC64/__Lib_PPS_p24FJ256_GA_GB_110_DPC64.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXGA204 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXGA204 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXGA204/__Lib_PPS_24FJXXGA204.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXGA204")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXGA204)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXGA204/__Lib_PPS_24FJXXGA204.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24HJ32GP204$|^dsPIC33FJ16GP304$|^PIC24HJ16GP304$|^dsPIC33FJ32GP204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC44 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC44 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC44/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC44.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC44")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC44)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC44/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC44.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ06GS101$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC18 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC18 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC18/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC18.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC18")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC18)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC18/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC18.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV128GM004$|^dsPIC33EV64GM004$|^dsPIC33EV256GM004$|^dsPIC33EV32GM004$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EVXXXGM004 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EVXXXGM004 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM004/__Lib_PPS_33EVXXXGM004.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM004")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EVXXXGM004)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM004/__Lib_PPS_33EVXXXGM004.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128GS702$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP128GS702 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP128GS702 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP128GS702/__Lib_PPS_33EP128GS702.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP128GS702")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP128GS702)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP128GS702/__Lib_PPS_33EP128GS702.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ16MC304$|^dsPIC33FJ32MC204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC44 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC44 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC44/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC44.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC44")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC44)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC44/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC44.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA406$|^PIC24FJ256GA406$|^PIC24FJ128GA406$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGA406 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGA406 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA406/__Lib_PPS_24FJXXXGA406.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA406")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGA406)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA406/__Lib_PPS_24FJXXXGA406.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV32GM104$|^dsPIC33EV64GM104$|^dsPIC33EV256GM104$|^dsPIC33EV128GM104$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EVXXXGM104 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EVXXXGM104 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM104/__Lib_PPS_33EVXXXGM104.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM104")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EVXXXGM104)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM104/__Lib_PPS_33EVXXXGM104.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ32MC101$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXMC101 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXMC101 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC101/__Lib_PPS_24FJXXMC101.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC101")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXMC101)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC101/__Lib_PPS_24FJXXMC101.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA308$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJ64GA308 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJ64GA308 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA308/__Lib_PPS_24FJ64GA308.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA308")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJ64GA308)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA308/__Lib_PPS_24FJ64GA308.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ32MC101$|^dsPIC33FJ32GP101$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33FJXXGPMC101 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33FJXXGPMC101 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC101/__Lib_PPS_33FJXXGPMC101.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC101")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33FJXXGPMC101)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC101/__Lib_PPS_33FJXXGPMC101.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64GP503$|^dsPIC33EP32GP503$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPxxGP503 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPxxGP503 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxGP503/__Lib_PPS_33EPxxGP503.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxGP503")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPxxGP503)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxGP503/__Lib_PPS_33EPxxGP503.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GC006$|^PIC24FJ64GC006$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGC006 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGC006 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGC006/__Lib_PPS_24FJXXXGC006.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGC006")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGC006)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGC006/__Lib_PPS_24FJXXXGC006.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ32GP202$|^PIC24HJ32GP202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC28/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC28/__Lib_PPS_p24HJ_33FJ_32GP_202_204_16GP304_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24HJ64GP502$|^PIC24HJ128GP502$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24HJ_GP_02_04_DPC28A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24HJ_GP_02_04_DPC28A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC28A/__Lib_PPS_p24HJ_GP_02_04_DPC28A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC28A")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24HJ_GP_02_04_DPC28A)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC28A/__Lib_PPS_p24HJ_GP_02_04_DPC28A.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA310$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJ64GA310 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJ64GA310 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA310/__Lib_PPS_24FJ64GA310.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA310")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJ64GA310)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA310/__Lib_PPS_24FJ64GA310.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA310$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJ128GA310 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJ128GA310 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA310/__Lib_PPS_24FJ128GA310.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA310")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJ128GA310)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA310/__Lib_PPS_24FJ128GA310.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA104$|^PIC24FJ32GA104$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ64GA104_GB004_DPC44 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ64GA104_GB004_DPC44 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC44/__Lib_PPS_p24FJ64GA104_GB004_DPC44.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC44")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ64GA104_GB004_DPC44)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC44/__Lib_PPS_p24FJ64GA104_GB004_DPC44.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP256GP206$|^PIC24EP64GP206$|^PIC24EP512GP206$|^PIC24EP128GP206$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24EPXXXGP206 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24EPXXXGP206 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP206/__Lib_PPS_24EPXXXGP206.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP206")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24EPXXXGP206)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP206/__Lib_PPS_24EPXXXGP206.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP256MC504$|^dsPIC33EP512MC504$|^dsPIC33EP32MC504$|^dsPIC33EP64MC504$|^dsPIC33EP128MC504$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64MC504 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64MC504 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC504/__Lib_PPS_33EP64MC504.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC504")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64MC504)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC504/__Lib_PPS_33EP64MC504.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ06GS101A$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P33FJ06GS101A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P33FJ06GS101A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS101A/__Lib_PPS_P33FJ06GS101A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS101A")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P33FJ06GS101A)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS101A/__Lib_PPS_P33FJ06GS101A.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP256MC506$|^dsPIC33EP512MC506$|^dsPIC33EP64MC506$|^dsPIC33EP128MC506$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64MC506 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64MC506 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC506/__Lib_PPS_33EP64MC506.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC506")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64MC506)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC506/__Lib_PPS_33EP64MC506.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB004$|^PIC24FJ32GB004$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ64GA104_GB004_DPC44B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ64GA104_GB004_DPC44B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC44B/__Lib_PPS_p24FJ64GA104_GB004_DPC44B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC44B")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ64GA104_GB004_DPC44B)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC44B/__Lib_PPS_p24FJ64GA104_GB004_DPC44B.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV256GM002$|^dsPIC33EV128GM002$|^dsPIC33EV64GM002$|^dsPIC33EV32GM002$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EVXXXGM002 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EVXXXGM002 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM002/__Lib_PPS_33EVXXXGM002.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM002")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EVXXXGM002)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM002/__Lib_PPS_33EVXXXGM002.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ64GP204$|^dsPIC33FJ128GP204$|^dsPIC33FJ32GP304$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_GP_02_04_DPC44 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_GP_02_04_DPC44 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC44/__Lib_PPS_p33FJ_GP_02_04_DPC44.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC44")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_GP_02_04_DPC44)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC44/__Lib_PPS_p33FJ_GP_02_04_DPC44.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP512GP806$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24EPXXXGP806 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24EPXXXGP806 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24EPXXXGP806/__Lib_PPS_p24EPXXXGP806.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24EPXXXGP806")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24EPXXXGP806)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24EPXXXGP806/__Lib_PPS_p24EPXXXGP806.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256GA606$|^PIC24FJ1024GA606$|^PIC24FJ128GA606$|^PIC24FJ512GA606$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGA606 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGA606 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA606/__Lib_PPS_24FJXXXGA606.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA606")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGA606)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA606/__Lib_PPS_24FJXXXGA606.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA705$|^PIC24FJ64GA705$|^PIC24FJ256GA705$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGA705 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGA705 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA705/__Lib_PPS_24FJXXXGA705.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA705")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGA705)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA705/__Lib_PPS_24FJXXXGA705.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ32GP104$|^dsPIC33FJ32MC104$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33FJXXGPMC104 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33FJXXGPMC104 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC104/__Lib_PPS_33FJXXGPMC104.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC104")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33FJXXGPMC104)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC104/__Lib_PPS_33FJXXGPMC104.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXGA202 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXGA202 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXGA202/__Lib_PPS_24FJXXGA202.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXGA202")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXGA202)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXGA202/__Lib_PPS_24FJXXGA202.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA704$|^PIC24FJ256GA704$|^PIC24FJ64GA704$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGA704 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGA704 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA704/__Lib_PPS_24FJXXXGA704.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA704")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGA704)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA704/__Lib_PPS_24FJXXXGA704.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128GP506$|^dsPIC33EP64GP506$|^dsPIC33EP512GP506$|^dsPIC33EP256GP506$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64GP506 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64GP506 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP506/__Lib_PPS_33EP64GP506.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP506")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64GP506)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP506/__Lib_PPS_33EP64GP506.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ06GS102A$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P33FJ06GS102A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P33FJ06GS102A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS102A/__Lib_PPS_P33FJ06GS102A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS102A")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P33FJ06GS102A)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS102A/__Lib_PPS_P33FJ06GS102A.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP32GP504$|^dsPIC33EP512GP504$|^dsPIC33EP256GP504$|^dsPIC33EP128GP504$|^dsPIC33EP64GP504$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64GP504 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64GP504 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP504/__Lib_PPS_33EP64GP504.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP504")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64GP504)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP504/__Lib_PPS_33EP64GP504.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ128MC204$|^dsPIC33FJ64MC204$|^dsPIC33FJ32MC304$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_MC_02_04_DPC44 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_MC_02_04_DPC44 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC44/__Lib_PPS_p33FJ_MC_02_04_DPC44.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC44")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_MC_02_04_DPC44)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC44/__Lib_PPS_p33FJ_MC_02_04_DPC44.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128MC202$|^dsPIC33EP32MC202$|^dsPIC33EP64MC202$|^dsPIC33EP512MC202$|^dsPIC33EP256MC202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64MC202 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64MC202 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC202/__Lib_PPS_33EP64MC202.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC202")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64MC202)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC202/__Lib_PPS_33EP64MC202.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV64GM006$|^dsPIC33EV32GM006$|^dsPIC33EV128GM006$|^dsPIC33EV256GM006$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EVXXXGM006 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EVXXXGM006 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM006/__Lib_PPS_33EVXXXGM006.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM006")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EVXXXGM006)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM006/__Lib_PPS_33EVXXXGM006.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB410$|^PIC24FJ64GA410$|^PIC24FJ256GB410$|^PIC24FJ64GA412$|^PIC24FJ128GA410$|^PIC24FJ64GB412$|^PIC24FJ256GA410$|^PIC24FJ128GA412$|^PIC24FJ128GB410$|^PIC24FJ256GA412$|^PIC24FJ256GB412$|^PIC24FJ128GB412$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGX41X UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGX41X PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGX41X/__Lib_PPS_24FJXXXGX41X.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGX41X")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGX41X)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGX41X/__Lib_PPS_24FJXXXGX41X.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA102$|^PIC24FJ32GA102$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ64GA104_GB004_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ64GA104_GB004_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC28/__Lib_PPS_p24FJ64GA104_GB004_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ64GA104_GB004_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC28/__Lib_PPS_p24FJ64GA104_GB004_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB108$|^PIC24FJ128GB108$|^PIC24FJ192GB108$|^PIC24FJ256GB108$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ256_GA_GB_110_DPC80B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ256_GA_GB_110_DPC80B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC80B/__Lib_PPS_p24FJ256_GA_GB_110_DPC80B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC80B")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ256_GA_GB_110_DPC80B)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC80B/__Lib_PPS_p24FJ256_GA_GB_110_DPC80B.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ128MC802$|^dsPIC33FJ64MC802$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_MC_02_04_DPC28A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_MC_02_04_DPC28A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC28A/__Lib_PPS_p33FJ_MC_02_04_DPC28A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC28A")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_MC_02_04_DPC28A)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC28A/__Lib_PPS_p33FJ_MC_02_04_DPC28A.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ16GP101$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ16GP101 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ16GP101 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ16GP101/__Lib_PPS_p33FJ16GP101.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ16GP101")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ16GP101)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ16GP101/__Lib_PPS_p33FJ16GP101.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64MC204$|^dsPIC33EP128MC204$|^dsPIC33EP512MC204$|^dsPIC33EP32MC204$|^PIC24EP32MC204$|^dsPIC33EP256MC204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64MC204 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64MC204 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC204/__Lib_PPS_33EP64MC204.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC204")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64MC204)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC204/__Lib_PPS_33EP64MC204.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512GM706$|^dsPIC33EP512GM306$|^dsPIC33EP256GM706$|^dsPIC33EP128GM306$|^dsPIC33EP256GM306$|^dsPIC33EP128GM706$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXXGMX06 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXXGMX06 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX06/__Lib_PPS_33EPXXXGMX06.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX06")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXXGMX06)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX06/__Lib_PPS_33EPXXXGMX06.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ64GP802$|^dsPIC33FJ128GP802$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_GP_02_04_DPC28A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_GP_02_04_DPC28A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC28A/__Lib_PPS_p33FJ_GP_02_04_DPC28A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC28A")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_GP_02_04_DPC28A)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC28A/__Lib_PPS_p33FJ_GP_02_04_DPC28A.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ128GP202$|^dsPIC33FJ64GP202$|^dsPIC33FJ32GP302$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_GP_02_04_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_GP_02_04_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC28/__Lib_PPS_p33FJ_GP_02_04_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_GP_02_04_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_GP_02_04_DPC28/__Lib_PPS_p33FJ_GP_02_04_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GB202$|^PIC24FJ64GB202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGB202 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGB202 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB202/__Lib_PPS_24FJXXXGB202.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB202")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGB202)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB202/__Lib_PPS_24FJXXXGB202.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ32MC302$|^dsPIC33FJ128MC202$|^dsPIC33FJ64MC202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_MC_02_04_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_MC_02_04_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC28/__Lib_PPS_p33FJ_MC_02_04_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_MC_02_04_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_MC_02_04_DPC28/__Lib_PPS_p33FJ_MC_02_04_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ12MC201$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ12MC201_202_DPC20 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ12MC201_202_DPC20 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ12MC201_202_DPC20/__Lib_PPS_p33FJ12MC201_202_DPC20.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ12MC201_202_DPC20")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ12MC201_202_DPC20)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ12MC201_202_DPC20/__Lib_PPS_p33FJ12MC201_202_DPC20.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ16GS502$|^dsPIC33FJ16GS402$|^dsPIC33FJ06GS202$|^dsPIC33FJ06GS102$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC28/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC28/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA308$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJ128GA308 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJ128GA308 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA308/__Lib_PPS_24FJ128GA308.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA308")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJ128GA308)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ128GA308/__Lib_PPS_24FJ128GA308.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGA204 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGA204 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA204/__Lib_PPS_24FJXXXGA204.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA204")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGA204)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGA204/__Lib_PPS_24FJXXXGA204.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP256GM310$|^dsPIC33EP128GM310$|^dsPIC33EP128GM710$|^dsPIC33EP512GM310$|^dsPIC33EP256GM710$|^dsPIC33EP512GM710$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXXGMX10 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXXGMX10 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX10/__Lib_PPS_33EPXXXGMX10.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX10")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXXGMX10)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX10/__Lib_PPS_33EPXXXGMX10.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ16MC102$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJ16MC102 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJ16MC102 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ16MC102/__Lib_PPS_24FJ16MC102.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ16MC102")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJ16MC102)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ16MC102/__Lib_PPS_24FJ16MC102.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP32GS202$|^dsPIC33EP16GS202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXGS202 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXGS202 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS202/__Lib_PPS_33EPXXGS202.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS202")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXGS202)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS202/__Lib_PPS_33EPXXGS202.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA306$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJ64GA306 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJ64GA306 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA306/__Lib_PPS_24FJ64GA306.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA306")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJ64GA306)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJ64GA306/__Lib_PPS_24FJ64GA306.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP512MC202$|^PIC24EP64MC202$|^PIC24EP32MC202$|^PIC24EP256MC202$|^PIC24EP128MC202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24EPXXXMC202 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24EPXXXMC202 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC202/__Lib_PPS_24EPXXXMC202.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC202")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24EPXXXMC202)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC202/__Lib_PPS_24EPXXXMC202.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV256GM102$|^dsPIC33EV128GM102$|^dsPIC33EV32GM102$|^dsPIC33EV64GM102$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EVXXXGM102 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EVXXXGM102 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM102/__Lib_PPS_33EVXXXGM102.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM102")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EVXXXGM102)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM102/__Lib_PPS_33EVXXXGM102.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP32GP203$|^PIC24EP64MC203$|^PIC24EP64GP203$|^PIC24EP32MC203$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24EPXXXGP203 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24EPXXXGP203 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP203/__Lib_PPS_24EPXXXGP203.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP203")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24EPXXXGP203)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP203/__Lib_PPS_24EPXXXGP203.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ32MC104$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXMC104 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXMC104 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC104/__Lib_PPS_24FJXXMC104.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC104")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXMC104)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXMC104/__Lib_PPS_24FJXXMC104.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV64GM106$|^dsPIC33EV32GM106$|^dsPIC33EV128GM106$|^dsPIC33EV256GM106$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EVXXXGM106 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EVXXXGM106 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM106/__Lib_PPS_33EVXXXGM106.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM106")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EVXXXGM106)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EVXXXGM106/__Lib_PPS_33EVXXXGM106.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP32GP502$|^dsPIC33EP512GP502$|^dsPIC33EP128GP502$|^dsPIC33EP256GP502$|^dsPIC33EP64GP502$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64GP502 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64GP502 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP502/__Lib_PPS_33EP64GP502.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP502")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64GP502)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64GP502/__Lib_PPS_33EP64GP502.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ32GP102$|^dsPIC33FJ32MC102$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33FJXXGPMC102 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33FJXXGPMC102 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC102/__Lib_PPS_33FJXXGPMC102.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC102")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33FJXXGPMC102)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33FJXXGPMC102/__Lib_PPS_33FJXXGPMC102.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ12MC202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ12MC201_202_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ12MC201_202_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ12MC201_202_DPC28/__Lib_PPS_p33FJ12MC201_202_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ12MC201_202_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ12MC201_202_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ12MC201_202_DPC28/__Lib_PPS_p33FJ12MC201_202_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64GS506$|^dsPIC33EP16GS506$|^dsPIC33EP32GS506$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXGS506 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXGS506 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS506/__Lib_PPS_33EPXXGS506.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS506")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXGS506)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS506/__Lib_PPS_33EPXXGS506.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP128GP204$|^PIC24EP256GP204$|^PIC24EP512GP204$|^PIC24EP32GP204$|^PIC24EP64GP204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24EPXXXGP204 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24EPXXXGP204 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP204/__Lib_PPS_24EPXXXGP204.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP204")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24EPXXXGP204)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXGP204/__Lib_PPS_24EPXXXGP204.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP256MC206$|^PIC24EP512MC206$|^PIC24EP64MC206$|^PIC24EP128MC206$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24EPXXXMC206 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24EPXXXMC206 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC206/__Lib_PPS_24EPXXXMC206.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC206")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24EPXXXMC206)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC206/__Lib_PPS_24EPXXXMC206.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ192GA110$|^PIC24FJ64GA110$|^PIC24FJ128GA110$|^PIC24FJ256GA110$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ256_GA_GB_110_DPC100 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ256_GA_GB_110_DPC100 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC100/__Lib_PPS_p24FJ256_GA_GB_110_DPC100.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC100")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ256_GA_GB_110_DPC100)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC100/__Lib_PPS_p24FJ256_GA_GB_110_DPC100.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB002$|^PIC24FJ32GB002$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ64GA104_GB004_DPC28B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ64GA104_GB004_DPC28B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC28B/__Lib_PPS_p24FJ64GA104_GB004_DPC28B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC28B")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ64GA104_GB004_DPC28B)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA104_GB004_DPC28B/__Lib_PPS_p24FJ64GA104_GB004_DPC28B.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64GS502$|^dsPIC33EP16GS502$|^dsPIC33EP32GS502$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXGS502 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXGS502 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS502/__Lib_PPS_33EPXXGS502.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS502")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXGS502)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXGS502/__Lib_PPS_33EPXXGS502.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24HJ64GP202$|^PIC24HJ32GP302$|^PIC24HJ128GP202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24HJ_GP_02_04_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24HJ_GP_02_04_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC28/__Lib_PPS_p24HJ_GP_02_04_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24HJ_GP_02_04_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC28/__Lib_PPS_p24HJ_GP_02_04_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ16GP102$|^dsPIC33FJ16MC102$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ16MC102 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ16MC102 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ16MC102/__Lib_PPS_p24FJ16MC102.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ16MC102")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ16MC102)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ16MC102/__Lib_PPS_p24FJ16MC102.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ192GB110$|^PIC24FJ256GB210$|^PIC24FJ256DA110$|^PIC24FJ128DA210$|^PIC24FJ64GB110$|^PIC24FJ256GB110$|^PIC24FJ128GB210$|^PIC24FJ256DA210$|^PIC24FJ128DA110$|^PIC24FJ128GB110$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ256_GA_GB_110_DPC100B UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ256_GA_GB_110_DPC100B PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC100B/__Lib_PPS_p24FJ256_GA_GB_110_DPC100B.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC100B")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ256_GA_GB_110_DPC100B)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC100B/__Lib_PPS_p24FJ256_GA_GB_110_DPC100B.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512GM304$|^dsPIC33EP128GM604$|^dsPIC33EP128GM304$|^dsPIC33EP256GM604$|^dsPIC33EP256GM304$|^dsPIC33EP512GM604$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXXGMX04 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXXGMX04 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX04/__Lib_PPS_33EPXXXGMX04.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX04")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXXGMX04)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGMX04/__Lib_PPS_33EPXXXGMX04.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256GB610$|^PIC24FJ1024GB610$|^PIC24FJ128GA610$|^PIC24FJ256GA610$|^PIC24FJ512GB610$|^PIC24FJ128GB610$|^PIC24FJ512GA610$|^PIC24FJ1024GA610$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGX61X UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGX61X PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGX61X/__Lib_PPS_24FJXXXGX61X.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGX61X")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGX61X)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGX61X/__Lib_PPS_24FJXXXGX61X.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP512GU810$|^PIC24EP512GU814$|^PIC24EP256GU810$|^PIC24EP256GU814$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24EP512GU810 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24EP512GU810 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24EP512GU810/__Lib_PPS_p24EP512GU810.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24EP512GU810")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24EP512GU810)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24EP512GU810/__Lib_PPS_p24EP512GU810.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512MC206$|^dsPIC33EP64MC206$|^dsPIC33EP256MC206$|^dsPIC33EP128MC206$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64MC206 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64MC206 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC206/__Lib_PPS_33EP64MC206.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC206")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64MC206)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC206/__Lib_PPS_33EP64MC206.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128GS704$|^dsPIC33EP64GS804$|^dsPIC33EP128GS804$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPXXXGS704_804 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPXXXGS704_804 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS704_804/__Lib_PPS_33EPXXXGS704_804.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS704_804")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPXXXGS704_804)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPXXXGS704_804/__Lib_PPS_33EPXXXGS704_804.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ09GS302$|^dsPIC33FJ06GS202A$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P33FJ06GS202A_302 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P33FJ06GS202A_302 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS202A_302/__Lib_PPS_P33FJ06GS202A_302.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS202A_302")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P33FJ06GS202A_302)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS202A_302/__Lib_PPS_P33FJ06GS202A_302.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ06GS001$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_P33FJ06GS001 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_P33FJ06GS001 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS001/__Lib_PPS_P33FJ06GS001.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS001")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_P33FJ06GS001)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_P33FJ06GS001/__Lib_PPS_P33FJ06GS001.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24HJ32GP304$|^PIC24HJ64GP204$|^PIC24HJ128GP204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24HJ_GP_02_04_DPC44 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24HJ_GP_02_04_DPC44 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC44/__Lib_PPS_p24HJ_GP_02_04_DPC44.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC44")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24HJ_GP_02_04_DPC44)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC44/__Lib_PPS_p24HJ_GP_02_04_DPC44.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB204$|^PIC24FJ128GB204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGB204 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGB204 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB204/__Lib_PPS_24FJXXXGB204.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB204")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGB204)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB204/__Lib_PPS_24FJXXXGB204.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP32MC502$|^dsPIC33EP512MC502$|^dsPIC33EP256MC502$|^dsPIC33EP128MC502$|^dsPIC33EP64MC502$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EP64MC502 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EP64MC502 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC502/__Lib_PPS_33EP64MC502.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC502")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EP64MC502)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EP64MC502/__Lib_PPS_33EP64MC502.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ16GS404$|^dsPIC33FJ16GS504$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC44 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC44 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC44/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC44.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC44")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC44)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC44/__Lib_PPS_p33FJ06GS101_x02_16GSx02_x04_DPC44.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ16MC101$|^PIC24FJ16MC101$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ16MC101 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ16MC101 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ16MC101/__Lib_PPS_p24FJ16MC101.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ16MC101")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ16MC101)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ16MC101/__Lib_PPS_p24FJ16MC101.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB406$|^PIC24FJ128GB406$|^PIC24FJ256GB406$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGB406 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGB406 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB406/__Lib_PPS_24FJXXXGB406.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB406")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGB406)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGB406/__Lib_PPS_24FJXXXGB406.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA108$|^PIC24FJ192GA108$|^PIC24FJ256GA108$|^PIC24FJ128GA108$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ256_GA_GB_110_DPC80 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ256_GA_GB_110_DPC80 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC80/__Lib_PPS_p24FJ256_GA_GB_110_DPC80.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC80")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ256_GA_GB_110_DPC80)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ256_GA_GB_110_DPC80/__Lib_PPS_p24FJ256_GA_GB_110_DPC80.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ32MC202$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC28/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC28/__Lib_PPS_p33FJ_32MC_202_204_16MC304_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP32MC503$|^dsPIC33EP64MC503$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_33EPxxMC503 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_33EPxxMC503 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxMC503/__Lib_PPS_33EPxxMC503.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxMC503")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_33EPxxMC503)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_33EPxxMC503/__Lib_PPS_33EPxxMC503.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GC010$|^PIC24FJ64GC010$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24FJXXXGC010 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24FJXXXGC010 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGC010/__Lib_PPS_24FJXXXGC010.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGC010")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24FJXXXGC010)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24FJXXXGC010/__Lib_PPS_24FJXXXGC010.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ48GA002$|^PIC24FJ16GA002$|^PIC24FJ32GA002$|^PIC24FJ64GA002$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24FJ64GA004_DPC28 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24FJ64GA004_DPC28 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA004_DPC28/__Lib_PPS_p24FJ64GA004_DPC28.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA004_DPC28")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24FJ64GA004_DPC28)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24FJ64GA004_DPC28/__Lib_PPS_p24FJ64GA004_DPC28.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP512MC204$|^PIC24EP256MC204$|^PIC24EP128MC204$|^PIC24EP64MC204$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24EPXXXMC204 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24EPXXXMC204 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC204/__Lib_PPS_24EPXXXMC204.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC204")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24EPXXXMC204)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_24EPXXXMC204/__Lib_PPS_24EPXXXMC204.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24HJ128GP504$|^PIC24HJ64GP504$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_p24HJ_GP_02_04_DPC44A UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_p24HJ_GP_02_04_DPC44A PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC44A/__Lib_PPS_p24HJ_GP_02_04_DPC44A.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC44A")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_p24HJ_GP_02_04_DPC44A)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PPS_p24HJ_GP_02_04_DPC44A/__Lib_PPS_p24HJ_GP_02_04_DPC44A.mcl\"")


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
