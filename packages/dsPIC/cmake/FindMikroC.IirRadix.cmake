if (${MCU_NAME} MATCHES "^dsPIC33FJ256GP710A$|^dsPIC33FJ64GS610$|^dsPIC33FJ64GP306A$|^dsPIC30F6014$|^dsPIC33FJ32GS610$|^dsPIC33FJ128GP710A$|^dsPIC30F6015$|^dsPIC33FJ64GS606$|^dsPIC30F5013E$|^dsPIC30F5013$|^dsPIC33FJ64GP206$|^dsPIC33FJ16MC102$|^dsPIC33FJ64GP804$|^dsPIC33FJ32GS406$|^dsPIC33FJ128MC202$|^dsPIC33FJ64MC510$|^dsPIC33FJ64GP310A$|^dsPIC30F2010$|^dsPIC33FJ32GP304$|^dsPIC33FJ12MC201$|^dsPIC33FJ128GP306$|^dsPIC33FJ64MC508$|^dsPIC33FJ256GP506$|^dsPIC30F4013E$|^dsPIC33FJ128MC804$|^dsPIC30F5011$|^dsPIC33FJ32GP102$|^dsPIC33FJ128GP206$|^dsPIC33FJ64MC706$|^dsPIC33FJ128MC708$|^dsPIC33FJ128GP310$|^dsPIC30F6013A$|^dsPIC33FJ06GS101$|^dsPIC33FJ32MC202$|^dsPIC33FJ128GP804$|^dsPIC33FJ32MC304$|^dsPIC33FJ64GP710$|^dsPIC33FJ06GS202$|^dsPIC33FJ128GP706A$|^dsPIC33FJ128GP202$|^dsPIC30F4012E$|^dsPIC33FJ64MC506A$|^dsPIC33FJ64GP708$|^dsPIC30F3012$|^dsPIC33FJ128MC510$|^dsPIC30F6012A$|^dsPIC33FJ128GP708$|^dsPIC33FJ32MC102$|^dsPIC33FJ64GP706$|^dsPIC33FJ64GP802$|^dsPIC33FJ128GP708A$|^dsPIC33FJ128MC706$|^dsPIC33FJ32GP104$|^dsPIC30F6012$|^dsPIC30F2023$|^dsPIC30F3010$|^dsPIC33FJ32MC302$|^dsPIC33FJ32GP202$|^dsPIC33FJ64MC710$|^dsPIC30F2011E$|^dsPIC33FJ64MC202$|^dsPIC30F5016$|^dsPIC33FJ06GS001$|^dsPIC30F2012$|^dsPIC33FJ64GP310$|^dsPIC33FJ256MC710A$|^dsPIC30F5015$|^dsPIC33FJ64GP710A$|^dsPIC33FJ06GS102A$|^dsPIC30F1010$|^dsPIC30F3011$|^dsPIC30F4013$|^dsPIC33FJ128MC710$|^dsPIC33FJ16MC101$|^dsPIC33FJ128MC710A$|^dsPIC30F3014E$|^dsPIC33FJ256GP510A$|^dsPIC30F5011E$|^dsPIC33FJ32GP302$|^dsPIC30F2012E$|^dsPIC33FJ64GS608$|^dsPIC30F2011$|^dsPIC33FJ64MC506$|^dsPIC33FJ128MC506A$|^dsPIC33FJ64GP204$|^dsPIC33FJ64GS406$|^dsPIC33FJ06GS202A$|^dsPIC33FJ16GS504$|^dsPIC33FJ128MC506$|^dsPIC30F3014$|^dsPIC33FJ32GP101$|^dsPIC33FJ32GP204$|^dsPIC33FJ128GP706$|^dsPIC33FJ256MC510$|^dsPIC33FJ16GS502$|^dsPIC33FJ64GP708A$|^dsPIC33FJ128GP310A$|^dsPIC33FJ256MC710$|^dsPIC33FJ12GP202$|^dsPIC30F6011A$|^dsPIC33FJ16GP101$|^dsPIC33FJ64GP202$|^dsPIC30F4012$|^dsPIC30F6014A$|^dsPIC33FJ64MC710A$|^dsPIC33FJ128MC204$|^dsPIC33FJ256GP510$|^dsPIC30F3010E$|^dsPIC33FJ06GS101A$|^dsPIC33FJ64MC204$|^dsPIC30F5015E$|^dsPIC30F6011$|^dsPIC33FJ16GP102$|^dsPIC33FJ256GP506A$|^dsPIC33FJ32MC104$|^dsPIC30F4011$|^dsPIC33FJ128GP802$|^dsPIC33FJ32GS606$|^dsPIC33FJ32MC101$|^dsPIC30F2010E$|^dsPIC30F3012E$|^dsPIC33FJ64GP306$|^dsPIC30F2020$|^dsPIC33FJ64GP206A$|^dsPIC33FJ64GP706A$|^dsPIC33FJ12MC202$|^dsPIC33FJ32MC204$|^dsPIC33FJ128MC510A$|^dsPIC33FJ09GS302$|^dsPIC33FJ16GS404$|^dsPIC33FJ06GS102$|^dsPIC33FJ64MC706A$|^dsPIC33FJ128GP306A$|^dsPIC33FJ128GP710$|^dsPIC30F4011E$|^dsPIC33FJ128MC706A$|^dsPIC33FJ32GS608$|^dsPIC30F3013E$|^dsPIC30F6013$|^dsPIC33FJ128GP206A$|^dsPIC33FJ128MC802$|^dsPIC33FJ16GS402$|^dsPIC33FJ12GP201$|^dsPIC33FJ16MC304$|^dsPIC33FJ256MC510A$|^dsPIC30F6010A$|^dsPIC30F3011E$|^dsPIC33FJ64MC804$|^dsPIC33FJ64MC508A$|^dsPIC33FJ256GP710$|^dsPIC30F3013$|^dsPIC30F6010$|^dsPIC33FJ16GP304$|^dsPIC33FJ64MC510A$|^dsPIC33FJ64MC802$|^dsPIC33FJ128GP204$|^dsPIC33FJ128MC708A$")


    if (NOT TARGET MikroC.IirRadix )
        add_library(__Lib_IirRadix UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_IirRadix PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_IirRadix/__Lib_IirRadix.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_IirRadix")

    set(MikroC.IirRadix_DEFINITIONS )


    if (NOT TARGET MikroC.IirRadix )
        add_library(MikroC.IirRadix INTERFACE)
    endif()

    target_link_libraries(MikroC.IirRadix INTERFACE __Lib_IirRadix)
    set(MikroC.IirRadix_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_IirRadix/__Lib_IirRadix.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.IirRadix  DEFAULT_MSG
                                    MikroC.IirRadix_LIBRARIES)


    set(MikroC.IirRadix_INCLUDE_DIRS ${MikroC.IirRadix_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.IirRadix_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^dsPIC33EP256GP502$|^dsPIC33EP512MU814$|^dsPIC33EP64MC204$|^dsPIC33EP256MC202$|^dsPIC33EV128GM006$|^dsPIC33EV256GM004$|^dsPIC33EP32GS506$|^dsPIC33EP64GS504$|^dsPIC33EP64MC504$|^dsPIC33EP512MC504$|^dsPIC33EP256GM710$|^dsPIC33EP128GM304$|^dsPIC33EP32GS504$|^dsPIC33EP16GS505$|^dsPIC33EP16GS504$|^dsPIC33EV128GM106$|^dsPIC33EP32GS202$|^dsPIC33EP64GS806$|^dsPIC33EP128GS704$|^dsPIC33EP256MU806$|^dsPIC33EP512GM604$|^dsPIC33EP512GM306$|^dsPIC33EP512MC506$|^dsPIC33EP128GS806$|^dsPIC33EP64GS506$|^dsPIC33EP512GM706$|^dsPIC33EP256MU810$|^dsPIC33EP128GS705$|^dsPIC33EP64GP503$|^dsPIC33EP128MC204$|^dsPIC33EP256GM310$|^dsPIC33EP16GS506$|^dsPIC33EP128MC206$|^dsPIC33EV32GM004$|^dsPIC33EP512GM310$|^dsPIC33EP512GP502$|^dsPIC33EP512GP806$|^dsPIC33EP64GP502$|^dsPIC33EV128GM004$|^dsPIC33EV256GM002$|^dsPIC33EP512GP504$|^dsPIC33EV256GM104$|^dsPIC33EP64MC206$|^dsPIC33EP64MC203$|^dsPIC33EP64GS805$|^dsPIC33EP128GS702$|^dsPIC33EP64MC502$|^dsPIC33EV64GM002$|^dsPIC33EP128GM310$|^dsPIC33EP16GS202$|^dsPIC33EP128MC502$|^dsPIC33EP512MC202$|^dsPIC33EP32GS502$|^dsPIC33EP128MC504$|^dsPIC33EP256MC504$|^dsPIC33EP32MC504$|^dsPIC33EP128GS804$|^dsPIC33EP64GS502$|^dsPIC33EV256GM006$|^dsPIC33EP256GM604$|^dsPIC33EV64GM102$|^dsPIC33EP512GP506$|^dsPIC33EP64GP506$|^dsPIC33EP256MC204$|^dsPIC33EP256MC506$|^dsPIC33EP16GS502$|^dsPIC33EP128GM306$|^dsPIC33EP64GS505$|^dsPIC33EP512MU810$|^dsPIC33EV32GM102$|^dsPIC33EP128GP502$|^dsPIC33EP32MC503$|^dsPIC33EP32MC204$|^dsPIC33EP32MC502$|^dsPIC33EP32GP502$|^dsPIC33EV128GM002$|^dsPIC33EV128GM102$|^dsPIC33EV64GM004$|^dsPIC33EV64GM106$|^dsPIC33EP128GP504$|^dsPIC33EV256GM106$|^dsPIC33EP32MC203$|^dsPIC33EP128GP506$|^dsPIC33EP128GS805$|^dsPIC33EP64GS708$|^dsPIC33EP256GP504$|^dsPIC33EP256GM706$|^dsPIC33EP256GP506$|^dsPIC33EP128GM706$|^dsPIC33EP32MC202$|^dsPIC33EP256MU814$|^dsPIC33EP512MC806$|^dsPIC33EP128MC506$|^dsPIC33EP32GP504$|^dsPIC33EV32GM106$|^dsPIC33EV128GM104$|^dsPIC33EV256GM102$|^dsPIC33EP128GS706$|^dsPIC33EP32GS505$|^dsPIC33EP512GM710$|^dsPIC33EP64MC506$|^dsPIC33EP128GM604$|^dsPIC33EV32GM006$|^dsPIC33EP512MC206$|^dsPIC33EP128GS708$|^dsPIC33EP128GM710$|^dsPIC33EV64GM104$|^dsPIC33EP256GM304$|^dsPIC33EP256MC502$|^dsPIC33EP512GM304$|^dsPIC33EP64GS808$|^dsPIC33EV32GM002$|^dsPIC33EP256GM306$|^dsPIC33EP128MC202$|^dsPIC33EP64GP504$|^dsPIC33EP64GS804$|^dsPIC33EP64MC503$|^dsPIC33EP64MC202$|^dsPIC33EP256MC206$|^dsPIC33EV64GM006$|^dsPIC33EP128GS808$|^dsPIC33EV32GM104$|^dsPIC33EP32GP503$|^dsPIC33EP512MC204$|^dsPIC33EP512MC502$")


    if (NOT TARGET MikroC.IirRadix )
        add_library(__Lib_IirRadix_EP UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_IirRadix_EP PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_IirRadix_EP/__Lib_IirRadix_EP.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_IirRadix_EP")

    set(MikroC.IirRadix_DEFINITIONS )


    if (NOT TARGET MikroC.IirRadix )
        add_library(MikroC.IirRadix INTERFACE)
    endif()

    target_link_libraries(MikroC.IirRadix INTERFACE __Lib_IirRadix_EP)
    set(MikroC.IirRadix_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_IirRadix_EP/__Lib_IirRadix_EP.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.IirRadix  DEFAULT_MSG
                                    MikroC.IirRadix_LIBRARIES)


    set(MikroC.IirRadix_INCLUDE_DIRS ${MikroC.IirRadix_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.IirRadix_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()
