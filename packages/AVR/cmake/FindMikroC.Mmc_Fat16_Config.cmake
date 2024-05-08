if (${MCU_NAME} MATCHES "^ATXMEGA128D4$|^ATXMEGA384C3$|^ATXMEGA256A3$|^ATXMEGA256A3U$|^ATXMEGA192C3$|^ATXMEGA192A3$|^ATXMEGA192A3U$|^ATXMEGA256A3BU$|^ATXMEGA256D3$|^ATXMEGA384D3$|^ATXMEGA192D3$|^ATXMEGA128A1$|^ATXMEGA128A1U$|^ATMEGA2561$|^ATXMEGA128A3$|^ATMEGA2560$|^ATXMEGA128C3$|^ATXMEGA128A4U$|^ATXMEGA128B1$|^ATXMEGA256A3B$|^ATXMEGA128B3$|^ATXMEGA128D3$|^ATXMEGA256C3$|^ATXMEGA128A3U$")


    if (NOT TARGET MikroC.Mmc_Fat16_Config )
        add_library(__Lib_MmcFat16Constants UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MmcFat16Constants PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_MmcFat16Constants/__Lib_MmcFat16Constants.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_MmcFat16Constants")

    set(MikroC.Mmc_Fat16_Config_DEFINITIONS )


    if (NOT TARGET MikroC.Mmc_Fat16_Config )
        add_library(MikroC.Mmc_Fat16_Config INTERFACE)
    endif()

    target_link_libraries(MikroC.Mmc_Fat16_Config INTERFACE __Lib_MmcFat16Constants)
    set(MikroC.Mmc_Fat16_Config_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_MmcFat16Constants/__Lib_MmcFat16Constants.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Mmc_Fat16_Config  DEFAULT_MSG
                                    MikroC.Mmc_Fat16_Config_LIBRARIES)


    set(MikroC.Mmc_Fat16_Config_INCLUDE_DIRS ${MikroC.Mmc_Fat16_Config_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Mmc_Fat16_Config_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

if (${MCU_NAME} MATCHES "^ATMEGA325P$|^AT90USB646$|^AT90CAN128$|^ATXMEGA32A4U$|^ATXMEGA64C3$|^ATMEGA325$|^ATMEGA324A$|^ATMEGA3290$|^ATMEGA165P$|^ATMEGA169$|^ATMEGA168PA$|^ATMEGA6490P$|^ATXMEGA64A4U$|^ATMEGA165$|^ATMEGA168A$|^ATMEGA329PA$|^AT90CAN64$|^ATMEGA16HVB$|^ATMEGA325A$|^ATMEGA32U2$|^ATMEGA164$|^ATMEGA16$|^ATXMEGA64B1$|^ATMEGA325PA$|^ATMEGA324PB$|^ATMEGA3250$|^ATMEGA168P$|^AT90CAN32$|^ATMEGA1284P$|^ATMEGA3250A$|^ATMEGA649P$|^ATXMEGA32A4$|^ATXMEGA32C4$|^ATMEGA161$|^ATMEGA32$|^ATMEGA165A$|^ATMEGA1281$|^ATMEGA324$|^ATMEGA649$|^ATXMEGA32E5$|^ATXMEGA8E5$|^ATMEGA168PB$|^ATMEGA645P$|^ATMEGA16U4$|^ATMEGA649A$|^ATMEGA128A$|^ATMEGA644A$|^ATXMEGA32C3$|^ATXMEGA64A3U$|^ATMEGA165PA$|^ATMEGA1284$|^ATMEGA64M1$|^ATMEGA64A$|^ATMEGA164PA$|^ATXMEGA64D4$|^ATMEGA328P$|^ATMEGA6450A$|^ATMEGA3250P$|^AT90USB647$|^ATMEGA329A$|^ATMEGA32C1$|^ATMEGA645A$|^ATMEGA6490A$|^ATMEGA1280$|^ATXMEGA16D4$|^AT90USB1286$|^ATXMEGA64A1$|^ATXMEGA64A1U$|^ATXMEGA16A4U$|^ATMEGA644P$|^AT90USB1287$|^ATMEGA163$|^ATMEGA6450P$|^ATMEGA64C1$|^ATXMEGA16A4$|^ATXMEGA32D3$|^ATMEGA32HVB$|^ATMEGA32A$|^ATMEGA645$|^ATMEGA3250PA$|^ATMEGA329$|^ATXMEGA64D3$|^ATMEGA164A$|^ATMEGA323$|^ATMEGA6450$|^ATMEGA162$|^ATMEGA164P$|^ATMEGA169P$|^ATMEGA169A$|^ATMEGA644$|^ATMEGA6490$|^ATMEGA16M1$|^ATMEGA32U4$|^ATMEGA640$|^AT90PWM216$|^AT90PWM161$|^ATMEGA128$|^ATXMEGA64A3$|^ATMEGA168$|^ATMEGA3290A$|^ATMEGA16A$|^ATMEGA169PA$|^ATMEGA324P$|^ATMEGA329P$|^ATMEGA103$|^AT90PWM316$|^ATXMEGA32D4$|^ATMEGA328PB$|^ATMEGA64$|^ATMEGA32M1$|^ATMEGA32U6$|^ATXMEGA16E5$|^ATXMEGA64B3$|^ATXMEGA16C4$|^ATMEGA3290P$|^ATMEGA328$|^ATMEGA644PA$|^ATMEGA324PA$")


    if (NOT TARGET MikroC.Mmc_Fat16_Config )
        add_library(__Lib_MmcFat16Constants UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MmcFat16Constants PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_MmcFat16Constants/__Lib_MmcFat16Constants.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_MmcFat16Constants")

    set(MikroC.Mmc_Fat16_Config_DEFINITIONS )


    if (NOT TARGET MikroC.Mmc_Fat16_Config )
        add_library(MikroC.Mmc_Fat16_Config INTERFACE)
    endif()

    target_link_libraries(MikroC.Mmc_Fat16_Config INTERFACE __Lib_MmcFat16Constants)
    set(MikroC.Mmc_Fat16_Config_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_MmcFat16Constants/__Lib_MmcFat16Constants.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Mmc_Fat16_Config  DEFAULT_MSG
                                    MikroC.Mmc_Fat16_Config_LIBRARIES)


    set(MikroC.Mmc_Fat16_Config_INCLUDE_DIRS ${MikroC.Mmc_Fat16_Config_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Mmc_Fat16_Config_LIBRARIES})
    
    list(JOIN LEGACY_LIBRARIES_LIST " " LEGACY_LIBRARIES_JOINED)
    set(LEGACY_LIBRARIES ${LEGACY_LIBRARIES_JOINED} CACHE STRING "" FORCE)
    ## Since mikroC cmd line needs mcl files to compile object, only way to pass those mcl files to cmake was through compiler flags.
    set( CMAKE_MikroC_FLAGS "${CMAKE_MikroC_FLAGS} ${LEGACY_LIBRARIES}")
    
    # removing duplacates from CMAKE_MikroC_FLAGS
    separate_arguments (separated NATIVE_COMMAND "${CMAKE_MikroC_FLAGS}")
    list(REMOVE_DUPLICATES separated)
    list(TRANSFORM separated PREPEND "\"")
    list(TRANSFORM separated APPEND "\"")

    list(JOIN separated " " joined)
    set(CMAKE_MikroC_FLAGS ${joined})
    unset(separated)
    unset(joined)

    
endif()

