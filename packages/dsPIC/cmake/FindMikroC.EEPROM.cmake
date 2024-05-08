if (${MCU_NAME} MATCHES "^PIC24FV08KM102$|^PIC24F32KA304$|^PIC24FV32KA302$|^PIC24FV16KA304$|^PIC24FV08KM202$|^PIC24FV08KM101$|^PIC24F08KM102$|^PIC24FV32KA304$|^PIC24FV16KM204$|^PIC24F16KA301$|^PIC24FV16KA301$|^PIC24F08KM202$|^PIC24F16KM202$|^PIC24FV32KA301$|^PIC24FV16KA302$|^PIC24F16KL401$|^PIC24F08KL402$|^PIC24F16KM102$|^PIC24FV16KM104$|^PIC24FV08KM204$|^PIC24F16KA302$|^PIC24F08KM204$|^PIC24F08KM101$|^PIC24F16KA304$|^PIC24F32KA302$|^PIC24F08KL302$|^PIC24FV16KM202$|^PIC24F16KL402$|^PIC24F08KL401$|^PIC24F08KA102$|^PIC24F32KA301$|^PIC24F16KA101$|^PIC24F16KM204$|^PIC24FV16KM102$|^PIC24F08KL301$|^PIC24F16KM104$|^PIC24F16KA102$|^PIC24F08KA101$")


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_p24_KA UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_p24_KA PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_EEPROM_p24_KA/__Lib_EEPROM_p24_KA.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_EEPROM_p24_KA")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_p24_KA)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_EEPROM_p24_KA/__Lib_EEPROM_p24_KA.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^dsPIC30F2010$|^dsPIC30F5011E$|^dsPIC30F6014A$|^dsPIC30F4013E$|^dsPIC30F5013E$|^dsPIC30F6013A$|^dsPIC30F2011E$|^dsPIC30F6013$|^dsPIC30F2011$|^dsPIC30F5015$|^dsPIC30F4012E$|^dsPIC30F4012$|^dsPIC30F4013$|^dsPIC30F5013$|^dsPIC30F3010E$|^dsPIC30F4011$|^dsPIC30F5011$|^dsPIC30F3014E$|^dsPIC30F3012E$|^dsPIC30F2023$|^dsPIC30F6010A$|^dsPIC30F1010$|^dsPIC30F6010$|^dsPIC30F3010$|^dsPIC30F3011$|^dsPIC30F3013$|^dsPIC30F6014$|^dsPIC30F5016$|^dsPIC30F6011$|^dsPIC30F5015E$|^dsPIC30F3013E$|^dsPIC30F6011A$|^dsPIC30F3011E$|^dsPIC30F3012$|^dsPIC30F6015$|^dsPIC30F3014$|^dsPIC30F2010E$|^dsPIC30F6012$|^dsPIC30F6012A$|^dsPIC30F4011E$")


    if (NOT TARGET MikroC.EEPROM )
        add_library(__Lib_EEPROM_p30 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_EEPROM_p30 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_EEPROM_p30/__Lib_EEPROM_p30.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_EEPROM_p30")

    set(MikroC.EEPROM_DEFINITIONS )


    if (NOT TARGET MikroC.EEPROM )
        add_library(MikroC.EEPROM INTERFACE)
    endif()

    target_link_libraries(MikroC.EEPROM INTERFACE __Lib_EEPROM_p30)
    set(MikroC.EEPROM_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_EEPROM_p30/__Lib_EEPROM_p30.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.EEPROM  DEFAULT_MSG
                                    MikroC.EEPROM_LIBRARIES)


    set(MikroC.EEPROM_INCLUDE_DIRS ${MikroC.EEPROM_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.EEPROM_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()
