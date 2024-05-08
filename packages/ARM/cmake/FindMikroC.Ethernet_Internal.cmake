if (${MCU_NAME} MATCHES "^STM32F746ZE$|^STM32F767NI$|^STM32F746ZG$|^STM32F767II$|^STM32F756VG$|^STM32F767VG$|^STM32F769II$|^STM32F769NG$|^STM32F777ZI$|^STM32F745VG$|^STM32F746VG$|^STM32F767NG$|^STM32F765VG$|^STM32F746BE$|^STM32F746NG$|^STM32F765II$|^STM32F767IG$|^STM32F769IG$|^STM32F756ZG$|^STM32F745IG$|^STM32F769BI$|^STM32F777VI$|^STM32F746NE$|^STM32F769BG$|^STM32F779NI$|^STM32F746IG$|^STM32F745ZG$|^STM32F765NG$|^STM32F779II$|^STM32F745VE$|^STM32F767BI$|^STM32F756BG$|^STM32F767ZG$|^STM32F767ZI$|^STM32F746BG$|^STM32F765ZI$|^STM32F756NG$|^STM32F765BG$|^STM32F769NI$|^STM32F765VI$|^STM32F756IG$|^STM32F765IG$|^STM32F745IE$|^STM32F746VE$|^STM32F767VI$|^STM32F777II$|^STM32F777BI$|^STM32F777NI$|^STM32F779BI$|^STM32F765BI$|^STM32F746IE$|^STM32F765NI$|^STM32F765ZG$|^STM32F767BG$|^STM32F745ZE$")


    if (NOT TARGET MikroC.Ethernet_Internal )
        add_library(__Lib_Ethernet_Intern UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Ethernet_Intern PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_Ethernet_Intern/__Lib_Ethernet_Intern.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_Ethernet_Intern")

    set(MikroC.Ethernet_Internal_DEFINITIONS )


    if (NOT TARGET MikroC.Ethernet_Internal )
        add_library(MikroC.Ethernet_Internal INTERFACE)
    endif()

    target_link_libraries(MikroC.Ethernet_Internal INTERFACE __Lib_Ethernet_Intern)
    set(MikroC.Ethernet_Internal_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_Ethernet_Intern/__Lib_Ethernet_Intern.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Ethernet_Internal  DEFAULT_MSG
                                    MikroC.Ethernet_Internal_LIBRARIES)


    set(MikroC.Ethernet_Internal_INCLUDE_DIRS ${MikroC.Ethernet_Internal_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Ethernet_Internal_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F429AG$|^STM32F437VI$|^STM32F417IG$|^STM32F407IE$|^STM32F439VG$|^STM32F479BG$|^STM32F469NE$|^STM32F427II$|^STM32F427AG$|^STM32F429BI$|^STM32F407VE$|^STM32F439ZG$|^STM32F427VG$|^STM32F469IG$|^STM32F429VE$|^STM32F427ZI$|^STM32F407ZG$|^STM32F407IG$|^STM32F429ZE$|^STM32F439NI$|^STM32F429IG$|^STM32F437AI$|^STM32F417ZE$|^STM32F429ZI$|^STM32F469BE$|^STM32F427VI$|^STM32F469BI$|^STM32F437ZI$|^STM32F429NG$|^STM32F479AI$|^STM32F469NG$|^STM32F417VG$|^STM32F427ZG$|^STM32F479NG$|^STM32F429II$|^STM32F439ZI$|^STM32F439VI$|^STM32F407VG$|^STM32F469IE$|^STM32F417IE$|^STM32F437IG$|^STM32F427AI$|^STM32F417ZG$|^STM32F479II$|^STM32F429VI$|^STM32F437ZG$|^STM32F429BE$|^STM32F429AI$|^STM32F429ZG$|^STM32F407ZE$|^STM32F437VG$|^STM32F469NI$|^STM32F479BI$|^STM32F479IG$|^STM32F429IE$|^STM32F439IG$|^STM32F479NI$|^STM32F439AI$|^STM32F469BG$|^STM32F429NI$|^STM32F417VE$|^STM32F427IG$|^STM32F437II$|^STM32F439BG$|^STM32F439II$|^STM32F469II$|^STM32F439BI$|^STM32F439NG$|^STM32F429VG$|^STM32F429BG$|^STM32F429NE$")


    if (NOT TARGET MikroC.Ethernet_Internal )
        add_library(__Lib_Ethernet_Intern UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Ethernet_Intern PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_Ethernet_Intern/__Lib_Ethernet_Intern.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_Ethernet_Intern")

    set(MikroC.Ethernet_Internal_DEFINITIONS )


    if (NOT TARGET MikroC.Ethernet_Internal )
        add_library(MikroC.Ethernet_Internal INTERFACE)
    endif()

    target_link_libraries(MikroC.Ethernet_Internal INTERFACE __Lib_Ethernet_Intern)
    set(MikroC.Ethernet_Internal_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_Ethernet_Intern/__Lib_Ethernet_Intern.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Ethernet_Internal  DEFAULT_MSG
                                    MikroC.Ethernet_Internal_LIBRARIES)


    set(MikroC.Ethernet_Internal_INCLUDE_DIRS ${MikroC.Ethernet_Internal_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Ethernet_Internal_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F217VE$|^STM32F207ZC$|^STM32F207VE$|^STM32F207IE$|^STM32F207VC$|^STM32F207VG$|^STM32F207VF$|^STM32F207IC$|^STM32F207IF$|^STM32F207ZE$|^STM32F207ZF$|^STM32F217IE$|^STM32F217ZG$|^STM32F207IG$|^STM32F217VG$|^STM32F217ZE$|^STM32F217IG$|^STM32F207ZG$")


    if (NOT TARGET MikroC.Ethernet_Internal )
        add_library(__Lib_Ethernet_Intern UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Ethernet_Intern PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_Ethernet_Intern/__Lib_Ethernet_Intern.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_Ethernet_Intern")

    set(MikroC.Ethernet_Internal_DEFINITIONS )


    if (NOT TARGET MikroC.Ethernet_Internal )
        add_library(MikroC.Ethernet_Internal INTERFACE)
    endif()

    target_link_libraries(MikroC.Ethernet_Internal INTERFACE __Lib_Ethernet_Intern)
    set(MikroC.Ethernet_Internal_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_Ethernet_Intern/__Lib_Ethernet_Intern.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.Ethernet_Internal  DEFAULT_MSG
                                    MikroC.Ethernet_Internal_LIBRARIES)


    set(MikroC.Ethernet_Internal_INCLUDE_DIRS ${MikroC.Ethernet_Internal_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.Ethernet_Internal_LIBRARIES})
    
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

