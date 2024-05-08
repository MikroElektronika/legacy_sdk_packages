if (${MCU_NAME} MATCHES "^dsPIC33EP32GS202$|^dsPIC33EP16GS202$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_33MC_EP_3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_33MC_EP_3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EP_3/__Lib_PWM_33MC_EP_3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EP_3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_33MC_EP_3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EP_3/__Lib_PWM_33MC_EP_3.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128GA704$|^PIC24FJ128GA705$|^PIC24FJ256GA702$|^PIC24FJ64GA702$|^PIC24FJ64GA705$|^PIC24FJ256GA704$|^PIC24FJ128GA702$|^PIC24FJ256GA705$|^PIC24FJ64GA704$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_24FJxxxGA70x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_24FJxxxGA70x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJxxxGA70x/__Lib_PWM_24FJxxxGA70x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJxxxGA70x")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_24FJxxxGA70x)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJxxxGA70x/__Lib_PWM_24FJxxxGA70x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FV16KM102$|^PIC24F16KM102$|^PIC24F08KM102$|^PIC24FV08KM102$|^PIC24F16KM104$|^PIC24FV08KM101$|^PIC24F08KM101$|^PIC24FV16KM104$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_FXXKM10X UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_FXXKM10X PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FXXKM10X/__Lib_PWM_FXXKM10X.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FXXKM10X")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_FXXKM10X)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FXXKM10X/__Lib_PWM_FXXKM10X.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FV08KM202$|^PIC24F16KM202$|^PIC24FV16KM202$|^PIC24F08KM204$|^PIC24FV16KM204$|^PIC24F08KM202$|^PIC24F16KM204$|^PIC24FV08KM204$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_FXXKM20X UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_FXXKM20X PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FXXKM20X/__Lib_PWM_FXXKM20X.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FXXKM20X")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_FXXKM20X)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FXXKM20X/__Lib_PWM_FXXKM20X.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP256GP502$|^PIC24EP256MC206$|^dsPIC33EP64MC204$|^PIC24EP256MC204$|^PIC24EP512GP204$|^dsPIC33EP256MC202$|^dsPIC33EP64MC504$|^PIC24EP128MC204$|^PIC24EP512MC206$|^PIC24EP32GP204$|^PIC24EP64GP204$|^PIC24EP32MC204$|^dsPIC33EP64GP503$|^dsPIC33EP128MC204$|^dsPIC33EP128MC206$|^PIC24EP64MC203$|^dsPIC33EP64GP502$|^PIC24EP256GP202$|^dsPIC33EP64MC206$|^dsPIC33EP64MC203$|^PIC24EP256GP204$|^PIC24EP128GP206$|^dsPIC33EP64MC502$|^PIC24EP512GP202$|^dsPIC33EP512MC202$|^dsPIC33EP128MC502$|^dsPIC33EP128MC504$|^dsPIC33EP256MC504$|^PIC24EP32MC203$|^dsPIC33EP32MC504$|^PIC24EP256GP206$|^PIC24EP64MC206$|^dsPIC33EP64GP506$|^PIC24EP512MC202$|^PIC24EP512GP206$|^dsPIC33EP256MC204$|^dsPIC33EP256MC506$|^dsPIC33EP128GP502$|^dsPIC33EP32MC503$|^dsPIC33EP32MC204$|^dsPIC33EP32MC502$|^PIC24EP64GP203$|^dsPIC33EP32GP502$|^PIC24EP128GP204$|^dsPIC33EP128GP504$|^dsPIC33EP32MC203$|^dsPIC33EP128GP506$|^PIC24EP256MC202$|^dsPIC33EP256GP504$|^dsPIC33EP256GP506$|^dsPIC33EP32MC202$|^dsPIC33EP128MC506$|^dsPIC33EP32GP504$|^dsPIC33EP64MC506$|^PIC24EP128GP202$|^dsPIC33EP512MC206$|^dsPIC33EP256MC502$|^PIC24EP32GP203$|^PIC24EP128MC206$|^PIC24EP64GP202$|^PIC24EP64GP206$|^PIC24EP512MC204$|^dsPIC33EP128MC202$|^dsPIC33EP64GP504$|^dsPIC33EP64MC503$|^PIC24EP32MC202$|^dsPIC33EP64MC202$|^dsPIC33EP256MC206$|^PIC24EP32GP202$|^PIC24EP64MC202$|^PIC24EP128MC202$|^PIC24EP64MC204$|^dsPIC33EP512MC204$|^dsPIC33EP32GP503$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_P33EPxxxGP50x_MC20x_50x_P24EPxxxGP_MC20x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_P33EPxxxGP50x_MC20x_50x_P24EPxxxGP_MC20x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_P33EPxxxGP50x_MC20x_50x_P24EPxxxGP_MC20x/__Lib_PWM_P33EPxxxGP50x_MC20x_50x_P24EPxxxGP_MC20x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_P33EPxxxGP50x_MC20x_50x_P24EPxxxGP_MC20x")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_P33EPxxxGP50x_MC20x_50x_P24EPxxxGP_MC20x)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_P33EPxxxGP50x_MC20x_50x_P24EPxxxGP_MC20x/__Lib_PWM_P33EPxxxGP50x_MC20x_50x_P24EPxxxGP_MC20x.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP64GS506$|^dsPIC33EP32GS504$|^dsPIC33EP64GS502$|^dsPIC33EP16GS502$|^dsPIC33EP32GS502$|^dsPIC33EP16GS505$|^dsPIC33EP16GS506$|^dsPIC33EP64GS505$|^dsPIC33EP16GS504$|^dsPIC33EP32GS506$|^dsPIC33EP32GS505$|^dsPIC33EP64GS504$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_33MC_EPEV_5 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_33MC_EPEV_5 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EPEV_5/__Lib_PWM_33MC_EPEV_5.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EPEV_5")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_33MC_EPEV_5)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EPEV_5/__Lib_PWM_33MC_EPEV_5.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512GP806$|^dsPIC33EP512MU814$|^PIC24EP512GU810$|^PIC24EP512GP806$|^dsPIC33EP512MC806$|^dsPIC33EP512MU810$|^PIC24EP512GU814$|^PIC24EP256GU810$|^PIC24EP256GU814$|^dsPIC33EP256MU806$|^dsPIC33EP256MU814$|^dsPIC33EP256MU810$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_P24EPxxxGP_GU_81x_P33EPxxxGP_MC_MU_8xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_P24EPxxxGP_GU_81x_P33EPxxxGP_MC_MU_8xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_P24EPxxxGP_GU_81x_P33EPxxxGP_MC_MU_8xx/__Lib_PWM_P24EPxxxGP_GU_81x_P33EPxxxGP_MC_MU_8xx.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_P24EPxxxGP_GU_81x_P33EPxxxGP_MC_MU_8xx")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_P24EPxxxGP_GU_81x_P33EPxxxGP_MC_MU_8xx)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_P24EPxxxGP_GU_81x_P33EPxxxGP_MC_MU_8xx/__Lib_PWM_P24EPxxxGP_GU_81x_P33EPxxxGP_MC_MU_8xx.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ32MC102$|^dsPIC33FJ32GP102$|^dsPIC33FJ32MC101$|^dsPIC33FJ32MC102$|^dsPIC33FJ32GP104$|^PIC24FJ32MC104$|^dsPIC33FJ32GP101$|^dsPIC33FJ32MC104$|^PIC24FJ32MC101$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_24FJXXMCXXX UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_24FJXXMCXXX PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJXXMCXXX/__Lib_PWM_24FJXXMCXXX.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJXXMCXXX")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_24FJXXMCXXX)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJXXMCXXX/__Lib_PWM_24FJXXMCXXX.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EV128GM004$|^dsPIC33EV64GM102$|^dsPIC33EV256GM104$|^dsPIC33EV32GM002$|^dsPIC33EV256GM004$|^dsPIC33EV64GM006$|^dsPIC33EV64GM106$|^dsPIC33EV32GM102$|^dsPIC33EV128GM106$|^dsPIC33EV64GM004$|^dsPIC33EV128GM104$|^dsPIC33EV256GM106$|^dsPIC33EV64GM002$|^dsPIC33EV128GM102$|^dsPIC33EV32GM004$|^dsPIC33EV64GM104$|^dsPIC33EV128GM006$|^dsPIC33EV128GM002$|^dsPIC33EV256GM102$|^dsPIC33EV32GM106$|^dsPIC33EV32GM104$|^dsPIC33EV256GM006$|^dsPIC33EV256GM002$|^dsPIC33EV32GM006$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_33MC_EV_3 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_33MC_EV_3 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EV_3/__Lib_PWM_33MC_EV_3.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EV_3")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_33MC_EV_3)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EV_3/__Lib_PWM_33MC_EV_3.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ256GP710A$|^PIC24F08KA101$|^dsPIC33FJ64GS610$|^dsPIC33FJ64GP306A$|^dsPIC30F6014$|^PIC24HJ64GP210A$|^PIC24HJ128GP210$|^dsPIC33FJ32GS610$|^dsPIC33FJ128GP710A$|^dsPIC30F6015$|^dsPIC33FJ64GS606$|^PIC24HJ64GP506A$|^dsPIC30F5013E$|^dsPIC30F5013$|^dsPIC33FJ64GP206$|^dsPIC33FJ64GP804$|^PIC24HJ128GP206$|^PIC24HJ128GP510A$|^dsPIC33FJ128MC202$|^dsPIC33FJ32GS406$|^PIC24HJ64GP504$|^dsPIC33FJ64MC510$|^dsPIC33FJ64GP310A$|^dsPIC30F2010$|^dsPIC33FJ32GP304$|^dsPIC33FJ128GP306$|^dsPIC33FJ12MC201$|^dsPIC33FJ64MC508$|^dsPIC33FJ256GP506$|^PIC24HJ128GP206A$|^dsPIC30F4013E$|^dsPIC33FJ128MC804$|^dsPIC30F5011$|^dsPIC33FJ128GP206$|^dsPIC33FJ64MC706$|^dsPIC33FJ128MC708$|^dsPIC33FJ128GP310$|^dsPIC30F6013A$|^dsPIC33FJ32MC202$|^PIC24HJ128GP306A$|^PIC24HJ64GP510A$|^PIC24HJ128GP202$|^dsPIC33FJ128GP804$|^PIC24HJ128GP310$|^dsPIC33FJ32MC304$|^dsPIC33FJ64GP710$|^dsPIC33FJ128GP706A$|^dsPIC33FJ128GP202$|^PIC24HJ256GP210A$|^dsPIC30F4012E$|^dsPIC33FJ64MC506A$|^dsPIC33FJ64GP708$|^dsPIC30F3012$|^dsPIC33FJ128MC510$|^dsPIC30F6012A$|^PIC24HJ128GP506A$|^PIC24FJ128GA006$|^PIC24F32KA304$|^dsPIC33FJ128GP708$|^PIC24FJ96GA006$|^PIC24FJ96GA010$|^dsPIC33FJ64GP706$|^dsPIC33FJ64GP802$|^PIC24FV32KA301$|^PIC24HJ128GP510$|^dsPIC33FJ128GP708A$|^dsPIC33FJ128MC706$|^dsPIC30F6012$|^dsPIC30F2023$|^dsPIC30F3010$|^dsPIC33FJ32MC302$|^PIC24HJ32GP204$|^PIC24F16KA101$|^PIC24FV16KA304$|^dsPIC33FJ32GP202$|^dsPIC33FJ64MC710$|^PIC24HJ12GP201$|^dsPIC30F2011E$|^dsPIC33FJ64MC202$|^dsPIC30F5016$|^PIC24F04KA200$|^dsPIC30F2012$|^PIC24HJ128GP502$|^dsPIC33FJ64GP310$|^dsPIC33FJ256MC710A$|^dsPIC30F5015$|^dsPIC33FJ64GP710A$|^PIC24HJ32GP304$|^dsPIC30F3011$|^dsPIC30F4013$|^PIC24HJ128GP306$|^dsPIC33FJ128MC710$|^dsPIC33FJ128MC710A$|^PIC24HJ128GP504$|^PIC24HJ128GP204$|^dsPIC30F3014E$|^dsPIC30F5011E$|^dsPIC33FJ256GP510A$|^dsPIC30F2012E$|^dsPIC33FJ32GP302$|^dsPIC33FJ64GS608$|^PIC24FJ32GA002$|^dsPIC30F2011$|^PIC24F16KA102$|^PIC24HJ64GP206$|^dsPIC33FJ64MC506$|^dsPIC33FJ128MC506A$|^dsPIC33FJ64GP204$|^dsPIC33FJ64GS406$|^dsPIC33FJ16GS504$|^dsPIC33FJ128MC506$|^dsPIC30F3014$|^PIC24F32KA301$|^PIC24FV16KA302$|^dsPIC33FJ32GP204$|^PIC24HJ128GP210A$|^PIC24FJ16GA002$|^dsPIC33FJ128GP706$|^PIC24HJ12GP202$|^dsPIC33FJ256MC510$|^PIC24FJ48GA004$|^dsPIC33FJ16GS502$|^dsPIC33FJ64GP708A$|^PIC24FJ128GA010$|^dsPIC33FJ128GP310A$|^dsPIC33FJ256MC710$|^PIC24FJ16GA004$|^PIC24HJ128GP506$|^dsPIC33FJ12GP202$|^PIC24FJ64GA002$|^dsPIC30F6011A$|^dsPIC33FJ64GP202$|^dsPIC30F4012$|^dsPIC30F6014A$|^PIC24FJ64GA004$|^dsPIC33FJ64MC710A$|^dsPIC33FJ128MC204$|^PIC24F08KA102$|^dsPIC30F3010E$|^dsPIC33FJ256GP510$|^dsPIC33FJ64MC204$|^PIC24HJ64GP502$|^dsPIC30F5015E$|^PIC24HJ256GP610$|^dsPIC30F6011$|^PIC24FJ48GA002$|^dsPIC33FJ256GP506A$|^PIC24HJ32GP302$|^PIC24HJ64GP206A$|^PIC24FV32KA302$|^dsPIC30F4011$|^dsPIC33FJ128GP802$|^dsPIC33FJ32GS606$|^PIC24F16KA301$|^PIC24HJ16GP304$|^PIC24F04KA201$|^PIC24FJ64GA008$|^dsPIC30F2010E$|^dsPIC30F3012E$|^PIC24F32KA302$|^dsPIC33FJ64GP306$|^dsPIC30F2020$|^PIC24HJ64GP506$|^dsPIC33FJ64GP206A$|^dsPIC33FJ64GP706A$|^PIC24HJ256GP206$|^PIC24HJ64GP210$|^dsPIC33FJ12MC202$|^PIC24HJ256GP206A$|^PIC24FV32KA304$|^dsPIC33FJ32MC204$|^dsPIC33FJ128MC510A$|^PIC24FJ32GA004$|^PIC24FJ128GA008$|^dsPIC33FJ16GS404$|^PIC24HJ64GP202$|^dsPIC33FJ64MC706A$|^dsPIC33FJ128GP306A$|^PIC24F16KA304$|^dsPIC33FJ128GP710$|^PIC24FJ64GA010$|^dsPIC30F4011E$|^dsPIC33FJ128MC706A$|^dsPIC33FJ32GS608$|^PIC24FJ96GA008$|^PIC24HJ64GP204$|^dsPIC30F3013E$|^PIC24HJ64GP510$|^dsPIC30F6013$|^dsPIC33FJ128GP206A$|^dsPIC33FJ128MC802$|^dsPIC33FJ16GS402$|^dsPIC33FJ12GP201$|^dsPIC33FJ16MC304$|^dsPIC33FJ256MC510A$|^dsPIC30F6010A$|^dsPIC30F3011E$|^PIC24HJ256GP210$|^dsPIC33FJ64MC804$|^dsPIC33FJ64MC508A$|^dsPIC33FJ256GP710$|^PIC24HJ256GP610A$|^PIC24FV16KA301$|^dsPIC30F3013$|^dsPIC30F6010$|^dsPIC33FJ16GP304$|^dsPIC33FJ64MC510A$|^dsPIC33FJ64MC802$|^PIC24F16KA302$|^PIC24FJ64GA006$|^dsPIC33FJ128GP204$|^PIC24HJ128GP310A$|^PIC24HJ32GP202$|^dsPIC33FJ128MC708A$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1/__Lib_PWM_1.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_1)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1/__Lib_PWM_1.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP128GS705$|^dsPIC33EP128GS706$|^dsPIC33EP128GS805$|^dsPIC33EP128GS808$|^dsPIC33EP128GS704$|^dsPIC33EP64GS804$|^dsPIC33EP128GS804$|^dsPIC33EP64GS805$|^dsPIC33EP128GS702$|^dsPIC33EP64GS808$|^dsPIC33EP128GS708$|^dsPIC33EP128GS806$|^dsPIC33EP64GS708$|^dsPIC33EP64GS806$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_33MC_EPEV_8 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_33MC_EPEV_8 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EPEV_8/__Lib_PWM_33MC_EPEV_8.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EPEV_8")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_33MC_EPEV_8)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_33MC_EPEV_8/__Lib_PWM_33MC_EPEV_8.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ128DA106$|^PIC24FJ192GB110$|^PIC24FJ192GB106$|^PIC24FJ128GA110$|^PIC24FJ128GA306$|^PIC24FJ64GA308$|^PIC24FJ192GA106$|^PIC24FJ128DA210$|^PIC24FJ64GA306$|^PIC24FJ64GA102$|^PIC24FJ128GB206$|^PIC24FJ128GB210$|^PIC24FJ64GB004$|^PIC24FJ256GA108$|^PIC24FJ32GB002$|^PIC24FJ64GB002$|^PIC24FJ256DA210$|^PIC24FJ64GA310$|^PIC24FJ192GA110$|^PIC24FJ256DA110$|^PIC24FJ64GB106$|^PIC24FJ128GA106$|^PIC24FJ32GB004$|^PIC24FJ64GB108$|^PIC24FJ128GB110$|^PIC24FJ256GB108$|^PIC24FJ64GB110$|^PIC24FJ128GB106$|^PIC24FJ32GA102$|^PIC24FJ128GA310$|^PIC24FJ64GA110$|^PIC24FJ192GB108$|^PIC24FJ32GA104$|^PIC24FJ128GA308$|^PIC24FJ64GA106$|^PIC24FJ256GA110$|^PIC24FJ128GB108$|^PIC24FJ64GA108$|^PIC24FJ128DA110$|^PIC24FJ128DA206$|^PIC24FJ256DA206$|^PIC24FJ128GA108$|^PIC24FJ256GB206$|^PIC24FJ256GB106$|^PIC24FJ256GA106$|^PIC24FJ192GA108$|^PIC24FJ256GB110$|^PIC24FJ64GA104$|^PIC24FJ256DA106$|^PIC24FJ256GB210$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_1_p24FJ256_GA_GB_110 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_1_p24FJ256_GA_GB_110 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1_p24FJ256_GA_GB_110/__Lib_PWM_1_p24FJ256_GA_GB_110.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1_p24FJ256_GA_GB_110")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_1_p24FJ256_GA_GB_110)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1_p24FJ256_GA_GB_110/__Lib_PWM_1_p24FJ256_GA_GB_110.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33EP512MC506$|^dsPIC33EP128GM710$|^dsPIC33EP128GM306$|^dsPIC33EP128GM604$|^dsPIC33EP128GM706$|^dsPIC33EP512GM604$|^dsPIC33EP512GM710$|^PIC24FJ64GC006$|^dsPIC33EP256GM706$|^dsPIC33EP512GP506$|^dsPIC33EP256GM306$|^dsPIC33EP512GM304$|^dsPIC33EP512MC504$|^PIC24FJ64GC010$|^dsPIC33EP512GM310$|^dsPIC33EP512GP504$|^dsPIC33EP128GM310$|^dsPIC33EP256GM710$|^dsPIC33EP512GM306$|^dsPIC33EP128GM304$|^dsPIC33EP256GM604$|^dsPIC33EP512GP502$|^dsPIC33EP256GM310$|^PIC24FJ128GC006$|^PIC24FJ128GC010$|^dsPIC33EP256GM304$|^dsPIC33EP512GM706$|^dsPIC33EP512MC502$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_FJ_EP UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_FJ_EP PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FJ_EP/__Lib_PWM_FJ_EP.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FJ_EP")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_FJ_EP)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_FJ_EP/__Lib_PWM_FJ_EP.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24FJ256GB606$|^PIC24FJ256GA606$|^PIC24FJ128GB406$|^PIC24FJ64GA202$|^PIC24FJ1024GB606$|^PIC24FJ128GA412$|^PIC24FJ512GA606$|^PIC24FJ256GB410$|^PIC24FJ1024GA610$|^PIC24FJ128GB610$|^PIC24FJ64GA406$|^PIC24FJ256GA412$|^PIC24FJ512GB610$|^PIC24FJ256GA406$|^PIC24FJ256GA610$|^PIC24FJ256GB610$|^PIC24FJ512GB606$|^PIC24FJ128GB410$|^PIC24FJ128GB202$|^PIC24FJ128GA204$|^PIC24FJ64GB410$|^PIC24FJ64GB406$|^PIC24FJ64GA204$|^PIC24FJ64GB202$|^PIC24FJ64GA412$|^PIC24FJ256GA410$|^PIC24FJ128GA410$|^PIC24FJ128GA406$|^PIC24FJ128GB412$|^PIC24FJ256GB412$|^PIC24FJ128GA202$|^PIC24FJ1024GB610$|^PIC24FJ64GB412$|^PIC24FJ256GB406$|^PIC24FJ128GB606$|^PIC24FJ128GB204$|^PIC24FJ64GB204$|^PIC24FJ128GA610$|^PIC24FJ64GA410$|^PIC24FJ1024GA606$|^PIC24FJ128GA606$|^PIC24FJ512GA610$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_24FJXXXGAGB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_24FJXXXGAGB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJXXXGAGB/__Lib_PWM_24FJXXXGAGB.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJXXXGAGB")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_24FJXXXGAGB)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_24FJXXXGAGB/__Lib_PWM_24FJXXXGAGB.mcl\"")


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

if (${MCU_NAME} MATCHES "^dsPIC33FJ06GS202$|^dsPIC33FJ09GS302$|^dsPIC33FJ06GS101$|^dsPIC33FJ06GS202A$|^dsPIC33FJ06GS102A$|^dsPIC30F1010$|^dsPIC33FJ06GS102$|^dsPIC33FJ06GS101A$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_1_T2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_1_T2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1_T2/__Lib_PWM_1_T2.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1_T2")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_1_T2)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_1_T2/__Lib_PWM_1_T2.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC24F08KL200$|^PIC24F08KL402$|^PIC24F08KL302$|^PIC24F16KL402$|^PIC24F08KL301$|^PIC24F04KL101$|^PIC24F04KL100$|^PIC24F08KL401$|^PIC24F16KL401$|^PIC24F08KL201$")


    if (NOT TARGET MikroC.PWM )
        add_library(__Lib_PWM_KL UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_KL PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_KL/__Lib_PWM_KL.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_KL")

    set(MikroC.PWM_DEFINITIONS )


    if (NOT TARGET MikroC.PWM )
        add_library(MikroC.PWM INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM INTERFACE __Lib_PWM_KL)
    set(MikroC.PWM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_KL/__Lib_PWM_KL.mcl\"")


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
