if (${MCU_NAME} MATCHES "^CEC1302$")


    if (NOT TARGET MikroC.TFT_16bit )
        add_library(__Lib_TFT_16bit UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TFT_16bit PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_TFT_16bit/__Lib_TFT_16bit.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_TFT_16bit")

    set(MikroC.TFT_16bit_DEFINITIONS )


    if (NOT TARGET MikroC.TFT_16bit )
        add_library(MikroC.TFT_16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.TFT_16bit INTERFACE __Lib_TFT_16bit)
    set(MikroC.TFT_16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MCHP/M4/__Lib_TFT_16bit/__Lib_TFT_16bit.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TFT_16bit  DEFAULT_MSG
                                    MikroC.TFT_16bit_LIBRARIES)


    set(MikroC.TFT_16bit_INCLUDE_DIRS ${MikroC.TFT_16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TFT_16bit_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^TM4C1233D5PM$|^TM4C1231E6PZ$|^TM4C1237H6PZ$|^TM4C1232D5PM$|^TM4C1299KCZAD$|^TM4C129DNCZAD$|^TM4C129ENCPDT$|^TM4C123GH6PZ$|^TM4C129CNCPDT$|^TM4C129XKCZAD$|^TM4C123BE6PM$|^TM4C123BH6PM$|^TM4C1233H6PGE$|^TM4C1233D5PZ$|^TM4C123BH6PZ$|^TM4C1236H6PM$|^TM4C1297NCZAD$|^TM4C123GH6ZRB$|^TM4C129CNCZAD$|^TM4C123GH6ZXR$|^TM4C1231D5PZ$|^TM4C1232E6PM$|^TM4C1230C3PM$|^TM4C123GH6PGE$|^TM4C129XNCZAD$|^TM4C123BE6PZ$|^TM4C1294KCPDT$|^TM4C1294NCPDT$|^TM4C1231D5PM$|^TM4C1237H6PM$|^TM4C1233H6PZ$|^TM4C1233H6PM$|^TM4C123AE6PM$|^TM4C1231C3PM$|^TM4C1231E6PM$|^TM4C1230H6PM$|^TM4C1230D5PM$|^TM4C123BH6PGE$|^TM4C1237H6PGE$|^TM4C1232C3PM$|^TM4C123GE6PM$|^TM4C123FE6PM$|^TM4C1292NCPDT$|^TM4C1231H6PGE$|^TM4C1292NCZAD$|^TM4C129DNCPDT$|^TM4C123GE6PZ$|^TM4C1230E6PM$|^TM4C1237E6PZ$|^TM4C1299NCZAD$|^TM4C1232H6PM$|^TM4C1233E6PM$|^TM4C1231H6PM$|^TM4C1290NCZAD$|^TM4C1237E6PM$|^TM4C1236D5PM$|^TM4C123BH6ZRB$|^TM4C1237D5PM$|^TM4C123GH6PM$|^TM4C129ENCZAD$|^TM4C123FH6PM$|^TM4C1294NCZAD$|^TM4C1233C3PM$|^TM4C123AH6PM$|^TM4C1233E6PZ$|^TM4C1290NCPDT$|^TM4C129EKCPDT$|^TM4C1231H6PZ$|^TM4C1237D5PZ$|^TM4C129LNCZAD$|^TM4C1236E6PM$")


    if (NOT TARGET MikroC.TFT_16bit )
        add_library(__Lib_TFT_16bit UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TFT_16bit PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_TFT_16bit/__Lib_TFT_16bit.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_TFT_16bit")

    set(MikroC.TFT_16bit_DEFINITIONS )


    if (NOT TARGET MikroC.TFT_16bit )
        add_library(MikroC.TFT_16bit INTERFACE)
    endif()

    target_link_libraries(MikroC.TFT_16bit INTERFACE __Lib_TFT_16bit)
    set(MikroC.TFT_16bit_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_TFT_16bit/__Lib_TFT_16bit.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TFT_16bit  DEFAULT_MSG
                                    MikroC.TFT_16bit_LIBRARIES)


    set(MikroC.TFT_16bit_INCLUDE_DIRS ${MikroC.TFT_16bit_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TFT_16bit_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

