if (${MCU_NAME} MATCHES "^PIC24FJ64GC006$|^PIC24FJ128DA106$|^PIC24FJ256GB606$|^PIC24FJ192GB110$|^PIC24FJ192GB106$|^PIC24FJ128GB406$|^PIC24FJ1024GB606$|^PIC24FJ128DA210$|^PIC24FJ64GC010$|^PIC24FJ256GB410$|^PIC24FJ128GB206$|^PIC24FJ128GB210$|^PIC24FJ64GB004$|^PIC24FJ128GB610$|^PIC24FJ32GB002$|^PIC24FJ64GB002$|^PIC24FJ256DA210$|^PIC24FJ512GB610$|^PIC24FJ256DA110$|^PIC24FJ64GB106$|^PIC24FJ256GB610$|^PIC24FJ32GB004$|^PIC24FJ512GB606$|^PIC24FJ128GB410$|^PIC24FJ64GB108$|^PIC24FJ128GB202$|^PIC24FJ128GB110$|^PIC24FJ64GB410$|^PIC24FJ256GB108$|^PIC24FJ64GB406$|^PIC24FJ64GB202$|^PIC24FJ64GB110$|^PIC24FJ128GB106$|^PIC24FJ192GB108$|^PIC24FJ128GB412$|^PIC24FJ128GC010$|^PIC24FJ128GC006$|^PIC24FJ256GB412$|^PIC24FJ128GB108$|^PIC24FJ1024GB610$|^PIC24FJ64GB412$|^PIC24FJ256GB406$|^PIC24FJ128DA110$|^PIC24FJ128DA206$|^PIC24FJ256DA206$|^PIC24FJ128GB606$|^PIC24FJ128GB204$|^PIC24FJ64GB204$|^PIC24FJ256GB206$|^PIC24FJ256GB106$|^PIC24FJ256GB110$|^PIC24FJ256DA106$|^PIC24FJ256GB210$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_USB/__Lib_USB.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_USB")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_USB/__Lib_USB.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.USB  DEFAULT_MSG
                                    MikroC.USB_LIBRARIES)


    set(MikroC.USB_INCLUDE_DIRS ${MikroC.USB_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.USB_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^dsPIC33EP512MU814$|^PIC24EP512GU810$|^dsPIC33EP512MU810$|^PIC24EP512GU814$|^PIC24EP256GU810$|^PIC24EP256GU814$|^dsPIC33EP256MU806$|^dsPIC33EP256MU814$|^dsPIC33EP256MU810$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_EP UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_EP PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_USB_EP/__Lib_USB_EP.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_USB_EP")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_EP)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_USB_EP/__Lib_USB_EP.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.USB  DEFAULT_MSG
                                    MikroC.USB_LIBRARIES)


    set(MikroC.USB_INCLUDE_DIRS ${MikroC.USB_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.USB_LIBRARIES})
    
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
