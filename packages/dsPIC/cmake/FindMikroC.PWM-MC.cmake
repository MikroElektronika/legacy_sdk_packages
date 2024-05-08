if (${MCU_NAME} MATCHES "^dsPIC33EP512MU814$|^dsPIC33EP512MC806$|^dsPIC33EP512MU810$|^dsPIC33EP256MU806$|^dsPIC33EP256MU814$|^dsPIC33EP256MU810$")


    if (NOT TARGET MikroC.PWM-MC )
        add_library(__Lib_PWM_MC_1_p33_EP UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_MC_1_p33_EP PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_1_p33_EP/__Lib_PWM_MC_1_p33_EP.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_1_p33_EP")

    set(MikroC.PWM-MC_DEFINITIONS )


    if (NOT TARGET MikroC.PWM-MC )
        add_library(MikroC.PWM-MC INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM-MC INTERFACE __Lib_PWM_MC_1_p33_EP)
    set(MikroC.PWM-MC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_1_p33_EP/__Lib_PWM_MC_1_p33_EP.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM-MC  DEFAULT_MSG
                                    MikroC.PWM-MC_LIBRARIES)


    set(MikroC.PWM-MC_INCLUDE_DIRS ${MikroC.PWM-MC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM-MC_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^dsPIC33FJ16MC304$|^dsPIC33FJ128MC204$|^dsPIC33FJ64MC804$|^dsPIC33FJ128MC802$|^dsPIC33FJ32MC302$|^dsPIC33FJ128MC202$|^dsPIC33FJ128MC804$|^dsPIC33FJ64MC204$|^dsPIC33FJ32MC202$|^dsPIC33FJ64MC202$|^dsPIC33FJ12MC201$|^dsPIC33FJ32MC304$|^dsPIC33FJ12MC202$|^dsPIC33FJ64MC802$|^dsPIC33FJ32MC204$")


    if (NOT TARGET MikroC.PWM-MC )
        add_library(__Lib_PWM_MC_12_p33 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_MC_12_p33 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_12_p33/__Lib_PWM_MC_12_p33.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_12_p33")

    set(MikroC.PWM-MC_DEFINITIONS )


    if (NOT TARGET MikroC.PWM-MC )
        add_library(MikroC.PWM-MC INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM-MC INTERFACE __Lib_PWM_MC_12_p33)
    set(MikroC.PWM-MC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_12_p33/__Lib_PWM_MC_12_p33.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM-MC  DEFAULT_MSG
                                    MikroC.PWM-MC_LIBRARIES)


    set(MikroC.PWM-MC_INCLUDE_DIRS ${MikroC.PWM-MC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM-MC_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^dsPIC33FJ16MC101$|^dsPIC30F2010$|^dsPIC33FJ256MC510A$|^dsPIC33FJ256MC510$|^dsPIC33FJ64MC710A$|^dsPIC30F5015$|^dsPIC33FJ128MC708A$|^PIC24FJ16MC101$|^dsPIC33FJ64MC510$|^dsPIC30F4012E$|^dsPIC30F4012$|^dsPIC33FJ64MC506$|^dsPIC30F3010E$|^dsPIC33FJ64MC710$|^dsPIC30F4011$|^dsPIC33FJ128MC510$|^dsPIC33FJ64MC508A$|^dsPIC30F6010A$|^dsPIC33FJ64MC510A$|^dsPIC30F6010$|^dsPIC33FJ64MC506A$|^dsPIC30F3010$|^dsPIC30F3011$|^dsPIC33FJ128MC506$|^dsPIC30F5016$|^dsPIC33FJ128MC708$|^dsPIC33FJ256MC710A$|^dsPIC33FJ128MC710A$|^dsPIC30F5015E$|^dsPIC33FJ64MC508$|^dsPIC33FJ64MC706$|^dsPIC30F3011E$|^dsPIC33FJ128MC510A$|^dsPIC33FJ16MC102$|^dsPIC33FJ128MC706A$|^dsPIC30F6015$|^dsPIC33FJ128MC710$|^PIC24FJ16MC102$|^dsPIC30F2010E$|^dsPIC33FJ64MC706A$|^dsPIC30F4011E$|^dsPIC33FJ128MC506A$|^dsPIC33FJ256MC710$|^dsPIC33FJ128MC706$")


    if (NOT TARGET MikroC.PWM-MC )
        add_library(__Lib_PWM_MC_1_p30_p33 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PWM_MC_1_p30_p33 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_1_p30_p33/__Lib_PWM_MC_1_p30_p33.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_1_p30_p33")

    set(MikroC.PWM-MC_DEFINITIONS )


    if (NOT TARGET MikroC.PWM-MC )
        add_library(MikroC.PWM-MC INTERFACE)
    endif()

    target_link_libraries(MikroC.PWM-MC INTERFACE __Lib_PWM_MC_1_p30_p33)
    set(MikroC.PWM-MC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_PWM_MC_1_p30_p33/__Lib_PWM_MC_1_p30_p33.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.PWM-MC  DEFAULT_MSG
                                    MikroC.PWM-MC_LIBRARIES)


    set(MikroC.PWM-MC_INCLUDE_DIRS ${MikroC.PWM-MC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.PWM-MC_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()
