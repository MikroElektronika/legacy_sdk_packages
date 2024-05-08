if (${MCU_NAME} MATCHES "^dsPIC33EP128GS705$|^dsPIC33EP128GS805$|^dsPIC33EP128GS704$|^dsPIC33EP64GS804$|^dsPIC33EP128GS804$|^dsPIC33EP64GS805$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GS_17ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GS_17ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_17ch/__Lib_ADC_1_GS_17ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_17ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GS_17ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_17ch/__Lib_ADC_1_GS_17ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256GA702$|^PIC24FJ64GA702$|^PIC24FJ128GA702$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_P24FJxxGA70x_10ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_P24FJxxGA70x_10ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_P24FJxxGA70x_10ch/__Lib_ADC_P24FJxxGA70x_10ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_P24FJxxGA70x_10ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_P24FJxxGA70x_10ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_P24FJxxGA70x_10ch/__Lib_ADC_P24FJxxGA70x_10ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512GM706$|^dsPIC33EP512GM306$|^dsPIC33EP256GM706$|^dsPIC33EP128GM306$|^dsPIC33EP256GM306$|^dsPIC33EP128GM706$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12_EP_30ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12_EP_30ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_30ch/__Lib_ADC_12_EP_30ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_30ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12_EP_30ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_30ch/__Lib_ADC_12_EP_30ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB410$|^PIC24FJ64GA410$|^PIC24FJ256GB410$|^PIC24FJ64GA412$|^PIC24FJ128GA410$|^PIC24FJ64GB412$|^PIC24FJ256GA410$|^PIC24FJ128GA412$|^PIC24FJ128GB410$|^PIC24FJ256GA412$|^PIC24FJ256GB412$|^PIC24FJ128GB412$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GAGB4XX_24ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GAGB4XX_24ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB4XX_24ch/__Lib_ADC_1_GAGB4XX_24ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB4XX_24ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GAGB4XX_24ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB4XX_24ch/__Lib_ADC_1_GAGB4XX_24ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FV08KM202$|^PIC24FV16KM102$|^PIC24F16KM102$|^PIC24F16KM202$|^PIC24F08KM102$|^PIC24FV08KM102$|^PIC24FV16KM202$|^PIC24F08KM202$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_24FXXKMX02 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_24FXXKMX02 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX02/__Lib_ADC_1_24FXXKMX02.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX02")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_24FXXKMX02)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX02/__Lib_ADC_1_24FXXKMX02.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP256GM310$|^dsPIC33EP128GM310$|^dsPIC33EP128GM710$|^dsPIC33EP512GM310$|^dsPIC33EP256GM710$|^dsPIC33EP512GM710$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12_EP_49ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12_EP_49ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_49ch/__Lib_ADC_12_EP_49ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_49ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12_EP_49ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_49ch/__Lib_ADC_12_EP_49ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GC006$|^PIC24FJ64GC006$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_24FJXXXGC006 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_24FJXXXGC006 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FJXXXGC006/__Lib_ADC_1_24FJXXXGC006.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FJXXXGC006")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_24FJXXXGC006)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FJXXXGC006/__Lib_ADC_1_24FJXXXGC006.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ192GA106$|^PIC24FJ128GB108$|^PIC24FJ256GA108$|^PIC24FJ128GA108$|^PIC24FJ192GA110$|^PIC24FJ64GB106$|^PIC24FJ64GA106$|^PIC24FJ256GB106$|^PIC24FJ128GA106$|^PIC24FJ192GB108$|^PIC24FJ128GA110$|^PIC24FJ256GA110$|^PIC24FJ256GB110$|^PIC24FJ192GB110$|^PIC24FJ128GB106$|^PIC24FJ192GA108$|^PIC24FJ64GB110$|^PIC24FJ64GA110$|^PIC24FJ192GB106$|^PIC24FJ256GB108$|^PIC24FJ64GA108$|^PIC24FJ64GB108$|^PIC24FJ128GB110$|^PIC24FJ256GA106$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24FJ256_GA_GB_110 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24FJ256_GA_GB_110 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GA_GB_110/__Lib_ADC_1_p24FJ256_GA_GB_110.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GA_GB_110")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24FJ256_GA_GB_110)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GA_GB_110/__Lib_ADC_1_p24FJ256_GA_GB_110.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256GB210$|^PIC24FJ256DA110$|^PIC24FJ128DA210$|^PIC24FJ128GB210$|^PIC24FJ256DA210$|^PIC24FJ128DA110$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24FJ256_GB_210 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24FJ256_GB_210 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GB_210/__Lib_ADC_1_p24FJ256_GB_210.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GB_210")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24FJ256_GB_210)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GB_210/__Lib_ADC_1_p24FJ256_GB_210.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24F16KA304$|^PIC24F32KA304$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_KA_ABC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_KA_ABC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KA_ABC/__Lib_ADC_1_KA_ABC.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KA_ABC")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_KA_ABC)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KA_ABC/__Lib_ADC_1_KA_ABC.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64GP504$|^PIC24EP512GP204$|^PIC24EP64MC203$|^dsPIC33EP256MC204$|^dsPIC33EP32GP504$|^dsPIC33EP512MC204$|^PIC24EP64MC204$|^PIC24EP64GP204$|^dsPIC33EP128GP504$|^dsPIC33EP512GP506$|^PIC24EP32MC203$|^PIC24EP128GP204$|^dsPIC33EP32MC504$|^dsPIC33EP128MC504$|^dsPIC33EP256GP504$|^PIC24EP256GP206$|^PIC24EP128MC204$|^dsPIC33EP512MC504$|^PIC24EP64GP203$|^dsPIC33EP64MC504$|^PIC24EP32MC204$|^dsPIC33EP256MC504$|^dsPIC33EP512GP504$|^PIC24EP32GP203$|^dsPIC33EP128MC204$|^dsPIC33EP64MC204$|^PIC24EP256MC204$|^dsPIC33EP32MC204$|^PIC24EP256GP204$|^PIC24EP32GP204$|^PIC24EP512MC204$|^PIC24EP64GP206$|^PIC24EP512GP206$|^PIC24EP128GP206$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_EP64_ABC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_EP64_ABC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_ABC/__Lib_ADC_1_EP64_ABC.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_ABC")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_EP64_ABC)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_ABC/__Lib_ADC_1_EP64_ABC.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP32GS504$|^dsPIC33EP16GS505$|^dsPIC33EP64GS505$|^dsPIC33EP16GS504$|^dsPIC33EP32GS505$|^dsPIC33EP64GS504$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GS_19ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GS_19ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_19ch/__Lib_ADC_1_GS_19ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_19ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GS_19ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_19ch/__Lib_ADC_1_GS_19ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB204$|^PIC24FJ128GB204$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GB_12ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GB_12ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GB_12ch/__Lib_ADC_1_GB_12ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GB_12ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GB_12ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GB_12ch/__Lib_ADC_1_GB_12ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128GS706$|^dsPIC33EP64GS506$|^dsPIC33EP128GS808$|^dsPIC33EP16GS506$|^dsPIC33EP32GS506$|^dsPIC33EP64GS808$|^dsPIC33EP128GS708$|^dsPIC33EP128GS806$|^dsPIC33EP64GS708$|^dsPIC33EP64GS806$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GS_22ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GS_22ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_22ch/__Lib_ADC_1_GS_22ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_22ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GS_22ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_22ch/__Lib_ADC_1_GS_22ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256GB610$|^PIC24FJ1024GB610$|^PIC24FJ128GA610$|^PIC24FJ256GA610$|^PIC24FJ512GB610$|^PIC24FJ128GB610$|^PIC24FJ512GA610$|^PIC24FJ1024GA610$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GAGB6XX_24ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GAGB6XX_24ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB6XX_24ch/__Lib_ADC_1_GAGB6XX_24ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB6XX_24ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GAGB6XX_24ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB6XX_24ch/__Lib_ADC_1_GAGB6XX_24ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24EP256MC206$|^dsPIC33EP512MC206$|^dsPIC33EP64MC206$|^dsPIC33EP128GP506$|^dsPIC33EP256MC206$|^dsPIC33EP128MC206$|^dsPIC33EP64GP506$|^PIC24EP512MC206$|^PIC24EP64MC206$|^dsPIC33EP256GP506$|^dsPIC33EP256MC506$|^PIC24EP128MC206$|^dsPIC33EP512MC506$|^dsPIC33EP64MC506$|^dsPIC33EP128MC506$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_EP64_ABCE UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_EP64_ABCE PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_ABCE/__Lib_ADC_1_EP64_ABCE.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_ABCE")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_EP64_ABCE)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_ABCE/__Lib_ADC_1_EP64_ABCE.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA308$|^PIC24FJ64GA306$|^PIC24FJ128GA306$|^PIC24FJ128GA308$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GA_306_308 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GA_306_308 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_306_308/__Lib_ADC_1_GA_306_308.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_306_308")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GA_306_308)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_306_308/__Lib_ADC_1_GA_306_308.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA202$|^PIC24FJ128GA202$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GA_10ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GA_10ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_10ch/__Lib_ADC_1_GA_10ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_10ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GA_10ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_10ch/__Lib_ADC_1_GA_10ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512GP806$|^PIC24EP512GP806$|^dsPIC33EP512MC806$|^dsPIC33EP256MU806$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12_p33EP806 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12_p33EP806 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p33EP806/__Lib_ADC_12_p33EP806.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p33EP806")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12_p33EP806)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p33EP806/__Lib_ADC_12_p33EP806.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512MU814$|^PIC24EP512GU810$|^dsPIC33EP512MU810$|^PIC24EP512GU814$|^PIC24EP256GU810$|^PIC24EP256GU814$|^dsPIC33EP256MU814$|^dsPIC33EP256MU810$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12_p33EP UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12_p33EP PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p33EP/__Lib_ADC_12_p33EP.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p33EP")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12_p33EP)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p33EP/__Lib_ADC_12_p33EP.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GB002$|^dsPIC30F5015$|^PIC24FJ64GA102$|^dsPIC30F3011E$|^dsPIC30F5015E$|^PIC24F08KA101$|^PIC24F04KA200$|^dsPIC30F6012A$|^dsPIC30F6011A$|^PIC24FJ96GA008$|^PIC24FJ64GA008$|^dsPIC30F6010$|^PIC24FJ64GB004$|^dsPIC33FJ16GP102$|^dsPIC30F3014$|^PIC24FJ64GA002$|^PIC24F08KA102$|^dsPIC30F6010A$|^PIC24FJ32GA002$|^PIC24FJ16GA002$|^dsPIC33FJ16MC101$|^dsPIC33FJ16GP101$|^dsPIC30F2011$|^dsPIC30F4013$|^dsPIC30F3012E$|^PIC24FJ96GA006$|^PIC24FJ48GA002$|^dsPIC30F5016$|^PIC24FJ64GA010$|^PIC24FJ32GB002$|^dsPIC30F6013$|^dsPIC30F5013E$|^dsPIC30F5011E$|^PIC24FJ128GA010$|^PIC24F04KA201$|^PIC24FJ16GA004$|^PIC24FJ32GA004$|^dsPIC30F3010E$|^dsPIC30F6013A$|^dsPIC30F3014E$|^PIC24FJ32GA104$|^dsPIC30F2012$|^PIC24F16KA101$|^PIC24FJ128GA006$|^PIC24FJ48GA004$|^PIC24FJ32GB004$|^dsPIC30F6012$|^dsPIC30F5013$|^dsPIC30F2012E$|^PIC24FJ16MC101$|^dsPIC30F4011E$|^dsPIC30F3011$|^PIC24F16KA102$|^dsPIC30F6011$|^dsPIC30F3012$|^dsPIC30F6014$|^dsPIC30F4013E$|^PIC24FJ96GA010$|^PIC24FJ64GA004$|^dsPIC30F3010$|^PIC24FJ32GA102$|^dsPIC30F3013E$|^dsPIC30F2011E$|^dsPIC30F4012$|^dsPIC30F4011$|^dsPIC30F6015$|^dsPIC30F2010$|^dsPIC30F5011$|^dsPIC30F6014A$|^dsPIC33FJ16MC102$|^dsPIC30F2010E$|^dsPIC30F3013$|^PIC24FJ128GA008$|^PIC24FJ64GA006$|^dsPIC30F4012E$|^PIC24FJ64GA104$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24FJ_p30 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24FJ_p30 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ_p30/__Lib_ADC_1_p24FJ_p30.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ_p30")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24FJ_p30)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ_p30/__Lib_ADC_1_p24FJ_p30.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GB202$|^PIC24FJ64GB202$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GB_9ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GB_9ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GB_9ch/__Lib_ADC_1_GB_9ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GB_9ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GB_9ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GB_9ch/__Lib_ADC_1_GB_9ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ64GA406$|^PIC24FJ256GA406$|^PIC24FJ256GA606$|^PIC24FJ1024GA606$|^PIC24FJ512GB606$|^PIC24FJ1024GB606$|^PIC24FJ64GB406$|^PIC24FJ128GA606$|^PIC24FJ128GB406$|^PIC24FJ256GB606$|^PIC24FJ128GA406$|^PIC24FJ256GB406$|^PIC24FJ512GA606$|^PIC24FJ128GB606$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GAGB_16ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GAGB_16ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB_16ch/__Lib_ADC_1_GAGB_16ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB_16ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GAGB_16ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GAGB_16ch/__Lib_ADC_1_GAGB_16ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FV32KA301$|^PIC24FV16KA301$|^PIC24FV32KA302$|^PIC24FV16KA302$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24FV16KA302 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24FV16KA302 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FV16KA302/__Lib_ADC_1_p24FV16KA302.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FV16KA302")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24FV16KA302)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FV16KA302/__Lib_ADC_1_p24FV16KA302.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP32GS202$|^dsPIC33EP16GS202$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GS202 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GS202 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS202/__Lib_ADC_1_GS202.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS202")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GS202)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS202/__Lib_ADC_1_GS202.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ32MC102$|^dsPIC33FJ32GP102$|^dsPIC33FJ32MC101$|^dsPIC33FJ32MC102$|^dsPIC33FJ32GP104$|^PIC24FJ32MC104$|^dsPIC33FJ32GP101$|^dsPIC33FJ32MC104$|^PIC24FJ32MC101$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24FJ UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24FJ PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ/__Lib_ADC_1_p24FJ.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24FJ)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ/__Lib_ADC_1_p24FJ.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ256GP710$|^dsPIC33FJ128GP708A$|^dsPIC33FJ256GP710A$|^dsPIC33FJ128GP706$|^dsPIC33FJ64GP706$|^dsPIC33FJ128GP710$|^dsPIC33FJ128GP706A$|^dsPIC33FJ64GP708$|^dsPIC33FJ128GP708$|^dsPIC33FJ128MC708A$|^dsPIC33FJ64MC710A$|^dsPIC33FJ64GP708A$|^dsPIC33FJ64GP710$|^dsPIC33FJ64GP710A$|^PIC24HJ256GP610A$|^dsPIC33FJ128MC710$|^dsPIC33FJ256MC710A$|^dsPIC33FJ64MC710$|^PIC24HJ256GP610$|^dsPIC33FJ128MC708$|^dsPIC33FJ128MC710A$|^dsPIC33FJ128GP710A$|^dsPIC33FJ256MC710$|^dsPIC33FJ64GP706A$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12_p24HJ_p33 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12_p24HJ_p33 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p24HJ_p33/__Lib_ADC_12_p24HJ_p33.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p24HJ_p33")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12_p24HJ_p33)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p24HJ_p33/__Lib_ADC_12_p24HJ_p33.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24F08KL200$|^PIC24F08KL402$|^PIC24F16KL402$|^PIC24F08KL401$|^PIC24F16KL401$|^PIC24F08KL201$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_KL UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_KL PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KL/__Lib_ADC_1_KL.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KL")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_KL)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KL/__Lib_ADC_1_KL.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128MC502$|^dsPIC33EP64MC202$|^PIC24EP32MC202$|^PIC24EP256GP202$|^PIC24EP32GP202$|^dsPIC33EP512MC202$|^PIC24EP512GP202$|^PIC24EP512MC202$|^dsPIC33EP32GP502$|^PIC24EP256MC202$|^dsPIC33EP32MC202$|^dsPIC33EP32MC502$|^dsPIC33EP128MC202$|^PIC24EP64MC202$|^PIC24EP128GP202$|^dsPIC33EP256GP502$|^dsPIC33EP64MC502$|^dsPIC33EP512GP502$|^dsPIC33EP128GP502$|^PIC24EP64GP202$|^PIC24EP128MC202$|^dsPIC33EP64GP502$|^dsPIC33EP256MC202$|^dsPIC33EP256MC502$|^dsPIC33EP512MC502$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_EP64_AB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_EP64_AB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_AB/__Lib_ADC_1_EP64_AB.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_AB")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_EP64_AB)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EP64_AB/__Lib_ADC_1_EP64_AB.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV32GM104$|^dsPIC33EV128GM004$|^dsPIC33EV64GM004$|^dsPIC33EV64GM104$|^dsPIC33EV256GM004$|^dsPIC33EV256GM104$|^dsPIC33EV32GM004$|^dsPIC33EV128GM104$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GM_24ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GM_24ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_24ch/__Lib_ADC_1_GM_24ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_24ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GM_24ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_24ch/__Lib_ADC_1_GM_24ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV256GM002$|^dsPIC33EV256GM102$|^dsPIC33EV128GM102$|^dsPIC33EV32GM102$|^dsPIC33EV64GM102$|^dsPIC33EV128GM002$|^dsPIC33EV64GM002$|^dsPIC33EV32GM002$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GM_11ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GM_11ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_11ch/__Lib_ADC_1_GM_11ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_11ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GM_11ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_11ch/__Lib_ADC_1_GM_11ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24HJ128GP510A$|^PIC24HJ64GP210A$|^PIC24HJ128GP506A$|^dsPIC33FJ256MC510A$|^dsPIC33FJ256MC510$|^dsPIC33FJ256GP510$|^PIC24HJ128GP510$|^PIC24HJ256GP210A$|^dsPIC33FJ128GP310$|^dsPIC33FJ128GP206$|^dsPIC33FJ64MC510$|^PIC24HJ64GP506$|^PIC24HJ256GP206$|^PIC24HJ64GP506A$|^PIC24HJ128GP506$|^PIC24HJ64GP510A$|^dsPIC33FJ128MC510$|^dsPIC33FJ128GP306A$|^PIC24HJ64GP210$|^PIC24HJ128GP310A$|^dsPIC33FJ128GP306$|^dsPIC33FJ64MC508A$|^PIC24HJ256GP210$|^dsPIC33FJ64GP310$|^dsPIC33FJ64MC510A$|^PIC24HJ128GP306$|^PIC24HJ128GP210A$|^dsPIC33FJ64GP206A$|^PIC24HJ128GP206$|^PIC24HJ64GP206A$|^dsPIC33FJ64GP306A$|^dsPIC33FJ256GP510A$|^dsPIC33FJ64GP206$|^dsPIC33FJ64MC508$|^PIC24HJ128GP210$|^dsPIC33FJ64GP310A$|^dsPIC33FJ128MC510A$|^PIC24HJ128GP206A$|^PIC24HJ64GP206$|^dsPIC33FJ128GP206A$|^PIC24HJ128GP310$|^PIC24HJ64GP510$|^dsPIC33FJ256GP506A$|^PIC24HJ256GP206A$|^dsPIC33FJ64GP306$|^PIC24HJ128GP306A$|^dsPIC33FJ256GP506$|^dsPIC33FJ128GP310A$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24HJ_p33 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24HJ_p33 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33/__Lib_ADC_1_p24HJ_p33.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24HJ_p33)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33/__Lib_ADC_1_p24HJ_p33.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FV16KA304$|^PIC24FV32KA304$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24FV16KA UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24FV16KA PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FV16KA/__Lib_ADC_1_p24FV16KA.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FV16KA")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24FV16KA)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FV16KA/__Lib_ADC_1_p24FV16KA.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24F16KA302$|^PIC24F32KA301$|^PIC24F32KA302$|^PIC24F16KA301$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_KA_AB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_KA_AB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KA_AB/__Lib_ADC_1_KA_AB.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KA_AB")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_KA_AB)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_KA_AB/__Lib_ADC_1_KA_AB.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256DA106$|^PIC24FJ128GB206$|^PIC24FJ128DA106$|^PIC24FJ256DA206$|^PIC24FJ128DA206$|^PIC24FJ256GB206$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24FJ256_GB_206 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24FJ256_GB_206 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GB_206/__Lib_ADC_1_p24FJ256_GB_206.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GB_206")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24FJ256_GB_206)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24FJ256_GB_206/__Lib_ADC_1_p24FJ256_GB_206.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FV08KM101$|^PIC24F08KM101$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_24FXXKMX01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_24FXXKMX01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX01/__Lib_ADC_1_24FXXKMX01.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX01")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_24FXXKMX01)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX01/__Lib_ADC_1_24FXXKMX01.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64MC203$|^dsPIC33EP64GP503$|^dsPIC33EP32MC503$|^dsPIC33EP64MC503$|^dsPIC33EP32MC203$|^dsPIC33EP32GP503$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_EPxx_ABD UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_EPxx_ABD PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EPxx_ABD/__Lib_ADC_1_EPxx_ABD.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EPxx_ABD")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_EPxx_ABD)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_EPxx_ABD/__Lib_ADC_1_EPxx_ABD.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ128MC706A$|^dsPIC33FJ64MC706$|^dsPIC33FJ64MC706A$|^dsPIC33FJ128MC706$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12_p24HJ_p33_2_7 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12_p24HJ_p33_2_7 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p24HJ_p33_2_7/__Lib_ADC_12_p24HJ_p33_2_7.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p24HJ_p33_2_7")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12_p24HJ_p33_2_7)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_p24HJ_p33_2_7/__Lib_ADC_12_p24HJ_p33_2_7.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA310$|^PIC24FJ64GA310$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GA_310 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GA_310 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_310/__Lib_ADC_1_GA_310.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_310")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GA_310)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_310/__Lib_ADC_1_GA_310.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ128MC802$|^dsPIC33FJ32GP302$|^PIC24HJ32GP302$|^dsPIC33FJ128GP804$|^dsPIC33FJ64MC204$|^PIC24HJ64GP202$|^dsPIC33FJ128GP802$|^PIC24HJ64GP204$|^dsPIC33FJ64MC506A$|^dsPIC33FJ32MC302$|^PIC24HJ128GP202$|^dsPIC33FJ128MC204$|^PIC24HJ64GP502$|^PIC24HJ128GP204$|^PIC24HJ128GP502$|^PIC24HJ128GP504$|^dsPIC33FJ128MC506A$|^dsPIC33FJ32GP304$|^dsPIC33FJ64MC202$|^dsPIC33FJ64GP802$|^dsPIC33FJ64GP804$|^dsPIC33FJ128GP204$|^dsPIC33FJ64MC804$|^dsPIC33FJ64GP202$|^dsPIC33FJ64MC506$|^dsPIC33FJ128MC804$|^dsPIC33FJ32MC304$|^dsPIC33FJ128MC202$|^dsPIC33FJ128GP202$|^PIC24HJ64GP504$|^dsPIC33FJ64GP204$|^dsPIC33FJ64MC802$|^dsPIC33FJ128MC506$|^PIC24HJ32GP304$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24HJ_p33_2_7 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24HJ_p33_2_7 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33_2_7/__Lib_ADC_1_p24HJ_p33_2_7.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33_2_7")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24HJ_p33_2_7)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33_2_7/__Lib_ADC_1_p24HJ_p33_2_7.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512GM304$|^dsPIC33EP128GM604$|^dsPIC33EP128GM304$|^dsPIC33EP256GM604$|^dsPIC33EP256GM304$|^dsPIC33EP512GM604$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_12_EP_18ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_12_EP_18ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_18ch/__Lib_ADC_12_EP_18ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_18ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_12_EP_18ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_12_EP_18ch/__Lib_ADC_12_EP_18ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64GS502$|^dsPIC33EP16GS502$|^dsPIC33EP32GS502$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GS_12ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GS_12ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_12ch/__Lib_ADC_1_GS_12ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_12ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GS_12ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_12ch/__Lib_ADC_1_GS_12ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA204$|^PIC24FJ64GA204$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GA_13ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GA_13ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_13ch/__Lib_ADC_1_GA_13ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_13ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GA_13ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GA_13ch/__Lib_ADC_1_GA_13ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24F16KM104$|^PIC24F08KM204$|^PIC24FV16KM204$|^PIC24F16KM204$|^PIC24FV08KM204$|^PIC24FV16KM104$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_24FXXKMX04 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_24FXXKMX04 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX04/__Lib_ADC_1_24FXXKMX04.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX04")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_24FXXKMX04)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FXXKMX04/__Lib_ADC_1_24FXXKMX04.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ09GS302$|^dsPIC33FJ32GS606$|^dsPIC33FJ06GS001$|^dsPIC33FJ06GS101A$|^dsPIC33FJ32GS608$|^dsPIC33FJ06GS102$|^dsPIC33FJ06GS202A$|^dsPIC33FJ64GS606$|^dsPIC33FJ16GS402$|^dsPIC33FJ16GS502$|^dsPIC30F1010$|^dsPIC33FJ32GS610$|^dsPIC30F2020$|^dsPIC33FJ64GS406$|^dsPIC33FJ32GS406$|^dsPIC33FJ06GS202$|^dsPIC33FJ16GS504$|^dsPIC33FJ64GS608$|^dsPIC33FJ06GS102A$|^dsPIC33FJ06GS101$|^dsPIC33FJ16GS404$|^dsPIC33FJ64GS610$|^dsPIC30F2023$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p30_pwm UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p30_pwm PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p30_pwm/__Lib_ADC_1_p30_pwm.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p30_pwm")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p30_pwm)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p30_pwm/__Lib_ADC_1_p30_pwm.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24HJ32GP204$|^dsPIC33FJ16MC304$|^dsPIC33FJ32GP202$|^dsPIC33FJ16GP304$|^PIC24HJ12GP202$|^dsPIC33FJ12GP201$|^PIC24HJ16GP304$|^dsPIC33FJ32MC202$|^dsPIC33FJ12MC201$|^dsPIC33FJ12MC202$|^PIC24HJ32GP202$|^dsPIC33FJ12GP202$|^dsPIC33FJ32GP204$|^PIC24HJ12GP201$|^dsPIC33FJ32MC204$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_p24HJ_p33_3_8 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_p24HJ_p33_3_8 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33_3_8/__Lib_ADC_1_p24HJ_p33_3_8.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33_3_8")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_p24HJ_p33_3_8)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_p24HJ_p33_3_8/__Lib_ADC_1_p24HJ_p33_3_8.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ16MC102$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_FJ16MC102 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_FJ16MC102 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_FJ16MC102/__Lib_ADC_1_FJ16MC102.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_FJ16MC102")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_FJ16MC102)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_FJ16MC102/__Lib_ADC_1_FJ16MC102.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV64GM106$|^dsPIC33EV64GM006$|^dsPIC33EV32GM006$|^dsPIC33EV32GM106$|^dsPIC33EV128GM006$|^dsPIC33EV128GM106$|^dsPIC33EV256GM006$|^dsPIC33EV256GM106$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GM_36ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GM_36ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_36ch/__Lib_ADC_1_GM_36ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_36ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GM_36ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GM_36ch/__Lib_ADC_1_GM_36ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128GS702$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_GS_11ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_GS_11ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_11ch/__Lib_ADC_1_GS_11ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_11ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_GS_11ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_GS_11ch/__Lib_ADC_1_GS_11ch.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GC010$|^PIC24FJ64GC010$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_1_24FJXXXGC010 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_1_24FJXXXGC010 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FJXXXGC010/__Lib_ADC_1_24FJXXXGC010.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FJXXXGC010")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_1_24FJXXXGC010)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_1_24FJXXXGC010/__Lib_ADC_1_24FJXXXGC010.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA704$|^PIC24FJ128GA705$|^PIC24FJ64GA705$|^PIC24FJ256GA704$|^PIC24FJ256GA705$|^PIC24FJ64GA704$")


    if (NOT TARGET MikroC.ADC )
        add_library(__Lib_ADC_P24FJxxGA70x_14ch UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_ADC_P24FJxxGA70x_14ch PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_P24FJxxGA70x_14ch/__Lib_ADC_P24FJxxGA70x_14ch.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_P24FJxxGA70x_14ch")

    set(MikroC.ADC_DEFINITIONS )


    if (NOT TARGET MikroC.ADC )
        add_library(MikroC.ADC INTERFACE)
    endif()

    target_link_libraries(MikroC.ADC INTERFACE __Lib_ADC_P24FJxxGA70x_14ch)
    set(MikroC.ADC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_ADC_P24FJxxGA70x_14ch/__Lib_ADC_P24FJxxGA70x_14ch.mcl\"")


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
