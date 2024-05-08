if (${MCU_NAME} MATCHES "^PIC18F45J11$|^PIC18LF46J11$|^PIC18LF45J11$|^PIC18F46J11$|^PIC18LF44J11$|^PIC18F44J11$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_4xJ11 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_4xJ11 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ11/__Lib_PPS_4xJ11.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ11")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_4xJ11)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ11/__Lib_PPS_4xJ11.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F27J13$|^PIC18LF26J13$|^PIC18F26J13$|^PIC18LF27J13$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_2xJ13 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_2xJ13 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ13/__Lib_PPS_2xJ13.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ13")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_2xJ13)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ13/__Lib_PPS_2xJ13.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F26K83$|^PIC18F25K83$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_2xK83 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_2xK83 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xK83/__Lib_PPS_2xK83.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xK83")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_2xK83)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xK83/__Lib_PPS_2xK83.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF46J53$|^PIC18F46J53$|^PIC18F47J53$|^PIC18LF47J53$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_4xJ53 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_4xJ53 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ53/__Lib_PPS_4xJ53.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ53")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_4xJ53)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ53/__Lib_PPS_4xJ53.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF45J50$|^PIC18F46J50$|^PIC18LF46J50$|^PIC18LF44J50$|^PIC18F44J50$|^PIC18F45J50$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_4xJ50 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_4xJ50 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ50/__Lib_PPS_4xJ50.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ50")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_4xJ50)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ50/__Lib_PPS_4xJ50.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F96J94$|^PIC18F67J94$|^PIC18F87J94$|^PIC18F65J94$|^PIC18F66J94$|^PIC18F85J94$|^PIC18F97J94$|^PIC18F95J94$|^PIC18F86J94$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_Lite UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_Lite PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_Lite/__Lib_PPS_Lite.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_Lite")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_Lite)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_Lite/__Lib_PPS_Lite.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF65K40$|^PIC18LF67K40$|^PIC18F66K40$|^PIC18LF66K40$|^PIC18F67K40$|^PIC18F65K40$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_6XK40 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_6XK40 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_6XK40/__Lib_PPS_6XK40.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_6XK40")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_6XK40)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_6XK40/__Lib_PPS_6XK40.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F47J13$|^PIC18LF46J13$|^PIC18F46J13$|^PIC18LF47J13$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_4xJ13 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_4xJ13 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ13/__Lib_PPS_4xJ13.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ13")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_4xJ13)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xJ13/__Lib_PPS_4xJ13.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F24J11$|^PIC18LF26J11$|^PIC18F25J11$|^PIC18LF25J11$|^PIC18F26J11$|^PIC18LF24J11$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_2xJ11 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_2xJ11 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ11/__Lib_PPS_2xJ11.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ11")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_2xJ11)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ11/__Lib_PPS_2xJ11.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF27J53$|^PIC18F26J53$|^PIC18LF26J53$|^PIC18F27J53$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_2xJ53 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_2xJ53 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ53/__Lib_PPS_2xJ53.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ53")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_2xJ53)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ53/__Lib_PPS_2xJ53.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F24J50$|^PIC18LF25J50$|^PIC18LF24J50$|^PIC18LF26J50$|^PIC18F25J50$|^PIC18F26J50$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_2xJ50 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_2xJ50 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ50/__Lib_PPS_2xJ50.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ50")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_2xJ50)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xJ50/__Lib_PPS_2xJ50.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F27K40$|^PIC18F26K40$|^PIC18LF27K40$|^PIC18LF26K40$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_26_27K40 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_26_27K40 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_26_27K40/__Lib_PPS_26_27K40.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_26_27K40")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_26_27K40)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_26_27K40/__Lib_PPS_26_27K40.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F55K42$|^PIC18F57K42$|^PIC18LF55K42$|^PIC18LF57K42$|^PIC18F56K42$|^PIC18LF56K42$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_5xK42 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_5xK42 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_5xK42/__Lib_PPS_5xK42.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_5xK42")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_5xK42)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_5xK42/__Lib_PPS_5xK42.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF46K42$|^PIC18LF45K42$|^PIC18F46K42$|^PIC18LF47K42$|^PIC18F45K42$|^PIC18F47K42$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_4xK42 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_4xK42 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xK42/__Lib_PPS_4xK42.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xK42")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_4xK42)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4xK42/__Lib_PPS_4xK42.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F45K40$|^PIC18LF47K40$|^PIC18LF46K40$|^PIC18F47K40$|^PIC18LF45K40$|^PIC18F46K40$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_4XK40 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_4XK40 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4XK40/__Lib_PPS_4XK40.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4XK40")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_4XK40)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_4XK40/__Lib_PPS_4XK40.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18LF26K42$|^PIC18LF25K42$|^PIC18F24K42$|^PIC18F25K42$|^PIC18F27K42$|^PIC18F26K42$|^PIC18LF24K42$|^PIC18LF27K42$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_2xK42 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_2xK42 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xK42/__Lib_PPS_2xK42.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xK42")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_2xK42)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_2xK42/__Lib_PPS_2xK42.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC18F25K40$|^PIC18LF25K40$|^PIC18F24K40$|^PIC18LF24K40$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_24_25K40 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_24_25K40 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_24_25K40/__Lib_PPS_24_25K40.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_24_25K40")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_24_25K40)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P18/__Lib_PPS_24_25K40/__Lib_PPS_24_25K40.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F18877$|^PIC16F18876$|^PIC16F18875$|^PIC16LF18876$|^PIC16LF18875$|^PIC16LF18877$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1887x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1887x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1887x/__Lib_PPS_1887x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1887x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1887x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1887x/__Lib_PPS_1887x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF15386$|^PIC16F15386$|^PIC16F15385$|^PIC16LF15385$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1538x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1538x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1538x/__Lib_PPS_1538x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1538x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1538x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1538x/__Lib_PPS_1538x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF15313$|^PIC16F15313$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_15313 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_15313 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_15313/__Lib_PPS_15313.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_15313")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_15313)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_15313/__Lib_PPS_15313.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1776$|^PIC16LF1773$|^PIC16F1776$|^PIC16LF1778$|^PIC16F1773$|^PIC16F1778$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1773_6_8 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1773_6_8 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1773_6_8/__Lib_PPS_1773_6_8.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1773_6_8")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1773_6_8)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1773_6_8/__Lib_PPS_1773_6_8.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F15344$|^PIC16LF15345$|^PIC16LF15344$|^PIC16F15345$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1534x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1534x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1534x/__Lib_PPS_1534x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1534x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1534x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1534x/__Lib_PPS_1534x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF19156$|^PIC16LF19155$|^PIC16F19156$|^PIC16F19155$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1915x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1915x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1915x/__Lib_PPS_1915x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1915x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1915x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1915x/__Lib_PPS_1915x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F18313$|^PIC16LF18313$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_18313 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_18313 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18313/__Lib_PPS_18313.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18313")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_18313)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18313/__Lib_PPS_18313.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1703$|^PIC16F1707$|^PIC16LF1707$|^PIC16LF1703$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1703_7 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1703_7 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1703_7/__Lib_PPS_1703_7.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1703_7")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1703_7)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1703_7/__Lib_PPS_1703_7.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1718$|^PIC16LF1713$|^PIC16F1713$|^PIC16F1716$|^PIC16F1718$|^PIC16LF1716$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1713_16_18 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1713_16_18 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1713_16_18/__Lib_PPS_1713_16_18.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1713_16_18")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1713_16_18)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1713_16_18/__Lib_PPS_1713_16_18.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1719$|^PIC16F1719$|^PIC16LF1717$|^PIC16F1717$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1717_19 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1717_19 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1717_19/__Lib_PPS_1717_19.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1717_19")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1717_19)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1717_19/__Lib_PPS_1717_19.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1574$|^PIC16LF1575$|^PIC16F1575$|^PIC16F1574$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1574_5 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1574_5 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1574_5/__Lib_PPS_1574_5.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1574_5")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1574_5)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1574_5/__Lib_PPS_1574_5.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF15323$|^PIC16F15323$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_15323 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_15323 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_15323/__Lib_PPS_15323.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_15323")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_15323)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_15323/__Lib_PPS_15323.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF18345$|^PIC16F18346$|^PIC16F18345$|^PIC16LF18346$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_18345 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_18345 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18345/__Lib_PPS_18345.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18345")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_18345)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18345/__Lib_PPS_18345.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1708$|^PIC16LF1708$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1708 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1708 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1708/__Lib_PPS_1708.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1708")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1708)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1708/__Lib_PPS_1708.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1705$|^PIC16F1709$|^PIC16LF1709$|^PIC16LF1704$|^PIC16F1704$|^PIC16LF1705$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_170x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_170x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_170x/__Lib_PPS_170x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_170x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_170x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_170x/__Lib_PPS_170x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1768$|^PIC16LF1769$|^PIC16F1769$|^PIC16LF1768$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1768_9 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1768_9 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1768_9/__Lib_PPS_1768_9.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1768_9")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1768_9)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1768_9/__Lib_PPS_1768_9.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1764$|^PIC16LF1764$|^PIC16F1765$|^PIC16LF1765$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1764_5 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1764_5 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1764_5/__Lib_PPS_1764_5.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1764_5")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1764_5)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1764_5/__Lib_PPS_1764_5.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F18324$|^PIC16LF18324$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_18324 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_18324 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18324/__Lib_PPS_18324.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18324")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_18324)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18324/__Lib_PPS_18324.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1619$|^PIC16LF1618$|^PIC16LF1619$|^PIC16F1618$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1618_19 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1618_19 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1618_19/__Lib_PPS_1618_19.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1618_19")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1618_19)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1618_19/__Lib_PPS_1618_19.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF18344$|^PIC16F18344$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_18344 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_18344 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18344/__Lib_PPS_18344.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18344")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_18344)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18344/__Lib_PPS_18344.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF18325$|^PIC16F18325$|^PIC16F18326$|^PIC16LF18326$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_18325 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_18325 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18325/__Lib_PPS_18325.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18325")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_18325)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18325/__Lib_PPS_18325.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F1779$|^PIC16LF1779$|^PIC16F1777$|^PIC16LF1777$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1777_9 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1777_9 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1777_9/__Lib_PPS_1777_9.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1777_9")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1777_9)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1777_9/__Lib_PPS_1777_9.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F18856$|^PIC16LF18856$|^PIC16F18854$|^PIC16F18857$|^PIC16F18855$|^PIC16LF18857$|^PIC16LF18854$|^PIC16LF18855$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1885x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1885x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1885x/__Lib_PPS_1885x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1885x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1885x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1885x/__Lib_PPS_1885x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF18323$|^PIC16F18323$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_18323 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_18323 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18323/__Lib_PPS_18323.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18323")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_18323)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_18323/__Lib_PPS_18323.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF19185$|^PIC16LF19186$|^PIC16F19185$|^PIC16F19186$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1918x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1918x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1918x/__Lib_PPS_1918x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1918x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1918x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1918x/__Lib_PPS_1918x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF15354$|^PIC16F15354$|^PIC16F15355$|^PIC16LF15355$|^PIC16LF15356$|^PIC16F15356$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1535x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1535x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1535x/__Lib_PPS_1535x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1535x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1535x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1535x/__Lib_PPS_1535x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1614$|^PIC16F1614$|^PIC16F1615$|^PIC16LF1615$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1614_15 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1614_15 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1614_15/__Lib_PPS_1614_15.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1614_15")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1614_15)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1614_15/__Lib_PPS_1614_15.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F19176$|^PIC16LF19175$|^PIC16LF19176$|^PIC16F19175$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1917x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1917x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1917x/__Lib_PPS_1917x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1917x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1917x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1917x/__Lib_PPS_1917x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F15325$|^PIC16F15324$|^PIC16LF15324$|^PIC16LF15325$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1532x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1532x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1532x/__Lib_PPS_1532x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1532x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1532x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1532x/__Lib_PPS_1532x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16F19195$|^PIC16F19197$|^PIC16F19196$|^PIC16LF19197$|^PIC16LF19195$|^PIC16LF19196$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1919x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1919x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1919x/__Lib_PPS_1919x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1919x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1919x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1919x/__Lib_PPS_1919x.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF1578$|^PIC16LF1579$|^PIC16F1579$|^PIC16F1578$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1578_9 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1578_9 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1578_9/__Lib_PPS_1578_9.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1578_9")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1578_9)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1578_9/__Lib_PPS_1578_9.mcl\"")


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

if (${MCU_NAME} MATCHES "^PIC16LF15376$|^PIC16LF15375$|^PIC16F15375$|^PIC16F15376$")


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(__Lib_PPS_1537x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_PPS_1537x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1537x/__Lib_PPS_1537x.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1537x")

    set(MikroC.Peripheral_Pin_Select_DEFINITIONS )


    if (NOT TARGET MikroC.Peripheral_Pin_Select )
        add_library(MikroC.Peripheral_Pin_Select INTERFACE)
    endif()

    target_link_libraries(MikroC.Peripheral_Pin_Select INTERFACE __Lib_PPS_1537x)
    set(MikroC.Peripheral_Pin_Select_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/P16_Enh/__Lib_PPS_1537x/__Lib_PPS_1537x.mcl\"")


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

