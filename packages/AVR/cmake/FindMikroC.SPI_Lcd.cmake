if (${MCU_NAME} MATCHES "^ATXMEGA128D4$|^ATXMEGA384C3$|^ATXMEGA256A3$|^ATXMEGA256A3U$|^ATXMEGA192C3$|^ATXMEGA192A3$|^ATXMEGA192A3U$|^ATXMEGA256A3BU$|^ATXMEGA256D3$|^ATXMEGA384D3$|^ATXMEGA192D3$|^ATXMEGA128A1$|^ATXMEGA128A1U$|^ATMEGA2561$|^ATXMEGA128A3$|^ATMEGA2560$|^ATXMEGA128C3$|^ATXMEGA128A4U$|^ATXMEGA128B1$|^ATXMEGA256A3B$|^ATXMEGA128B3$|^ATXMEGA128D3$|^ATXMEGA256C3$|^ATXMEGA128A3U$")


    if (NOT TARGET MikroC.SPI_Lcd )
        add_library(__Lib_SPILcd UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPILcd PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPILcd/__Lib_SPILcd.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPILcd")

    set(MikroC.SPI_Lcd_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Lcd )
        add_library(MikroC.SPI_Lcd INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Lcd INTERFACE __Lib_SPILcd)
    set(MikroC.SPI_Lcd_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/GT64K/__Lib_SPILcd/__Lib_SPILcd.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Lcd  DEFAULT_MSG
                                    MikroC.SPI_Lcd_LIBRARIES)


    set(MikroC.SPI_Lcd_INCLUDE_DIRS ${MikroC.SPI_Lcd_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Lcd_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^ATTINY441$|^ATTINY814$|^ATMEGA103$|^ATMEGA16M1$|^AT90USB646$|^ATTINY828$|^ATMEGA6450P$|^AT90PWM216$|^ATMEGA3290A$|^ATMEGA16HVB$|^AT90USB162$|^ATMEGA328$|^ATMEGA169PA$|^ATMEGA16A$|^ATMEGA32U2$|^ATXMEGA64A1$|^ATMEGA48$|^ATMEGA325$|^ATMEGA32U6$|^ATXMEGA32E5$|^ATMEGA8A$|^AT90PWM2$|^ATMEGA88PB$|^ATMEGA169P$|^ATMEGA324PA$|^ATMEGA168P$|^ATMEGA328PB$|^ATXMEGA64A4U$|^AT90S4433$|^ATMEGA644P$|^ATXMEGA32C3$|^ATMEGA169A$|^ATMEGA32M1$|^ATXMEGA64B1$|^AT90USB82$|^AT90S8515$|^ATMEGA325PA$|^ATMEGA32C1$|^ATTINY104$|^ATMEGA32U4$|^ATTINY48$|^ATMEGA1284$|^ATMEGA323$|^ATTINY816$|^ATXMEGA64A3$|^ATXMEGA32D4$|^ATTINY167$|^ATMEGA64C1$|^ATMEGA324P$|^ATMEGA88PA$|^ATMEGA165PA$|^AT90S4434$|^ATMEGA3250PA$|^ATTINY87$|^AT90USB647$|^ATXMEGA32C4$|^ATMEGA128A$|^ATXMEGA16E5$|^ATMEGA324PB$|^ATMEGA64A$|^ATMEGA640$|^ATMEGA1284P$|^ATMEGA649$|^ATMEGA32HVB$|^ATXMEGA32D3$|^ATMEGA8U2$|^ATMEGA644A$|^ATMEGA162$|^ATMEGA16HVA$|^ATMEGA6490A$|^ATMEGA169$|^AT90PWM3B$|^ATXMEGA64D3$|^AT90S4414$|^AT90PWM161$|^ATMEGA6450$|^ATMEGA168A$|^ATMEGA649P$|^ATMEGA3250P$|^ATMEGA48A$|^ATXMEGA16D4$|^ATMEGA161$|^ATMEGA6490$|^ATMEGA324A$|^AT90PWM3$|^ATMEGA644$|^ATMEGA128$|^ATXMEGA32A4$|^ATMEGA645P$|^ATMEGA168$|^ATMEGA644PA$|^ATMEGA164$|^ATMEGA32A$|^ATMEGA64M1$|^ATTINY817$|^ATMEGA325P$|^AT90CAN64$|^ATMEGA88$|^ATMEGA3290P$|^ATMEGA168PA$|^AT90CAN32$|^ATMEGA329A$|^ATMEGA165$|^ATMEGA1280$|^ATMEGA165P$|^ATMEGA3250$|^AT90CAN128$|^AT90PWM2B$|^ATTINY88$|^ATXMEGA16A4$|^ATMEGA649A$|^ATMEGA8535$|^ATXMEGA64D4$|^AT90PWM81$|^ATMEGA3250A$|^ATXMEGA64A3U$|^AT90S8535$|^ATMEGA329P$|^ATTINY841$|^ATMEGA8$|^ATMEGA16U2$|^ATMEGA1281$|^ATMEGA16U4$|^ATMEGA3290$|^ATMEGA88P$|^ATMEGA329$|^ATMEGA168PB$|^ATMEGA645A$|^ATXMEGA16C4$|^ATXMEGA32A4U$|^ATMEGA329PA$|^ATTINY417$|^ATMEGA164A$|^ATMEGA324$|^ATMEGA48PB$|^ATMEGA6490P$|^ATXMEGA64B3$|^ATTINY102$|^ATMEGA6450A$|^AT90USB1287$|^ATMEGA325A$|^ATMEGA165A$|^ATMEGA328P$|^ATXMEGA8E5$|^ATXMEGA64A1U$|^ATMEGA64$|^AT90PWM1$|^ATMEGA8HVA$|^ATMEGA645$|^ATMEGA48PA$|^ATMEGA8515$|^AT90USB1286$|^AT90PWM316$|^ATMEGA164PA$|^ATXMEGA64C3$|^ATMEGA88A$|^ATMEGA48P$|^ATMEGA16$|^ATMEGA164P$|^ATXMEGA16A4U$|^ATMEGA163$|^ATMEGA32$")


    if (NOT TARGET MikroC.SPI_Lcd )
        add_library(__Lib_SPILcd UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SPILcd PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPILcd/__Lib_SPILcd.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPILcd")

    set(MikroC.SPI_Lcd_DEFINITIONS )


    if (NOT TARGET MikroC.SPI_Lcd )
        add_library(MikroC.SPI_Lcd INTERFACE)
    endif()

    target_link_libraries(MikroC.SPI_Lcd INTERFACE __Lib_SPILcd)
    set(MikroC.SPI_Lcd_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/LTE64K/__Lib_SPILcd/__Lib_SPILcd.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.SPI_Lcd  DEFAULT_MSG
                                    MikroC.SPI_Lcd_LIBRARIES)


    set(MikroC.SPI_Lcd_INCLUDE_DIRS ${MikroC.SPI_Lcd_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.SPI_Lcd_LIBRARIES})
    
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

