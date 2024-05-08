if (${MCU_NAME} MATCHES "^STM32F767ZG$|^STM32F765BI$|^STM32F777II$|^STM32F769II$|^STM32F769NI$|^STM32F765VG$|^STM32F779BI$|^STM32F765BG$|^STM32F767NI$|^STM32F765ZI$|^STM32F769AI$|^STM32F767VG$|^STM32F765VI$|^STM32F767VI$|^STM32F779II$|^STM32F769NG$|^STM32F767BI$|^STM32F777NI$|^STM32F769BI$|^STM32F765II$|^STM32F765IG$|^STM32F765NG$|^STM32F769BG$|^STM32F777ZI$|^STM32F767ZI$|^STM32F765NI$|^STM32F767II$|^STM32F767NG$|^STM32F779AI$|^STM32F767BG$|^STM32F765ZG$|^STM32F769IG$|^STM32F779NI$|^STM32F767IG$|^STM32F777BI$|^STM32F777VI$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_123/__Lib_CAN_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_123")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_123)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_123/__Lib_CAN_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F756IG$|^STM32F746NG$|^STM32F746ZE$|^STM32F746NE$|^STM32F745ZG$|^STM32F745VG$|^STM32F756VG$|^STM32F746IE$|^STM32F756BG$|^STM32F745IG$|^STM32F745VE$|^STM32F745ZE$|^STM32F746BG$|^STM32F756NG$|^STM32F745IE$|^STM32F746IG$|^STM32F746BE$|^STM32F756ZG$|^STM32F746VE$|^STM32F746VG$|^STM32F746ZG$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_12/__Lib_CAN_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_12")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_12)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_12/__Lib_CAN_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F732RE$|^STM32F722IC$|^STM32F722VC$|^STM32F722VE$|^STM32F722RC$|^STM32F723VE$|^STM32F722RE$|^STM32F732ZE$|^STM32F723IC$|^STM32F722IE$|^STM32F722ZE$|^STM32F723IE$|^STM32F723ZC$|^STM32F733VE$|^STM32F733ZE$|^STM32F723ZE$|^STM32F733IE$|^STM32F722ZC$|^STM32F732IE$|^STM32F732VE$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_1/__Lib_CAN_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_1")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_1)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_CAN_1/__Lib_CAN_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F091CB$|^STM32F042F6$|^STM32F042K4$|^STM32F091RB$|^STM32F042C4$|^STM32F042F4$|^STM32F091VB$|^STM32F072RB$|^STM32F072V8$|^STM32F072CB$|^STM32F042C6$|^STM32F042G6$|^STM32F042G4$|^STM32F091CC$|^STM32F098CC$|^STM32F072R8$|^STM32F071C8$|^STM32F098VC$|^STM32F072VB$|^STM32F042K6$|^STM32F098RC$|^STM32F091RC$|^STM32F042T6$|^STM32F072C8$|^STM32F091VC$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_CAN_1/__Lib_CAN_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_CAN_1")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_1)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_CAN_1/__Lib_CAN_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F413MH$|^STM32F423CH$|^STM32F423ZH$|^STM32F423MH$|^STM32F413VH$|^STM32F413ZG$|^STM32F413MG$|^STM32F413RG$|^STM32F413ZH$|^STM32F423VH$|^STM32F413RH$|^STM32F413VG$|^STM32F413CH$|^STM32F423RH$|^STM32F413CG$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_123 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_123 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_123/__Lib_CAN_123.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_123")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_123)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_123/__Lib_CAN_123.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F415VG$|^STM32F429AG$|^STM32F469AG$|^STM32F437VI$|^STM32F469AE$|^STM32F417IG$|^STM32F407IE$|^STM32F439VG$|^STM32F469VG$|^STM32F479VI$|^STM32F479ZI$|^STM32F469NE$|^STM32F479BG$|^STM32F427II$|^STM32F427AG$|^STM32F429BI$|^STM32F407VE$|^STM32F439ZG$|^STM32F412VG$|^STM32F427VG$|^STM32F469IG$|^STM32F469VE$|^STM32F429VE$|^STM32F446MC$|^STM32F446ME$|^STM32F427ZI$|^STM32F479VG$|^STM32F407ZG$|^STM32F446ZE$|^STM32F407IG$|^STM32F429ZE$|^STM32F439NI$|^STM32F429IG$|^STM32F405ZG$|^STM32F405OG$|^STM32F437AI$|^STM32F412ZE$|^STM32F417ZE$|^STM32F429ZI$|^STM32F427VI$|^STM32F469BE$|^STM32F469BI$|^STM32F437ZI$|^STM32F429NG$|^STM32F446VC$|^STM32F479AI$|^STM32F469NG$|^STM32F417VG$|^STM32F427ZG$|^STM32F479AG$|^STM32F479NG$|^STM32F429II$|^STM32F439ZI$|^STM32F446VE$|^STM32F407VG$|^STM32F417IE$|^STM32F439VI$|^STM32F469IE$|^STM32F412RG$|^STM32F437IG$|^STM32F427AI$|^STM32F417ZG$|^STM32F479II$|^STM32F429VI$|^STM32F446RE$|^STM32F437ZG$|^STM32F429BE$|^STM32F429AI$|^STM32F415RG$|^STM32F429ZG$|^STM32F405RG$|^STM32F446ZC$|^STM32F407ZE$|^STM32F437VG$|^STM32F415ZG$|^STM32F405OE$|^STM32F469NI$|^STM32F469AI$|^STM32F479BI$|^STM32F469ZG$|^STM32F479IG$|^STM32F429IE$|^STM32F439IG$|^STM32F479NI$|^STM32F439AI$|^STM32F469BG$|^STM32F412RE$|^STM32F412ZG$|^STM32F469ZE$|^STM32F469VI$|^STM32F429NI$|^STM32F417VE$|^STM32F412CE$|^STM32F412CG$|^STM32F427IG$|^STM32F469ZI$|^STM32F415OG$|^STM32F437II$|^STM32F439BG$|^STM32F412VE$|^STM32F439II$|^STM32F469II$|^STM32F439BI$|^STM32F479ZG$|^STM32F439NG$|^STM32F429VG$|^STM32F405VG$|^STM32F429BG$|^STM32F429NE$|^STM32F446RC$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_12/__Lib_CAN_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_12")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_12)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_12/__Lib_CAN_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L451VE$|^STM32L486QG$|^STM32L451VC$|^STM32L476RC$|^STM32L471RE$|^STM32L451CE$|^STM32L486JG$|^STM32L475RE$|^STM32L476MG$|^STM32L476VG$|^STM32L486RG$|^STM32L433VC$|^STM32L476QE$|^STM32L476ZE$|^STM32L471RG$|^STM32L476ME$|^STM32L476JE$|^STM32L433CB$|^STM32L476RE$|^STM32L442KC$|^STM32L443RC$|^STM32L486ZG$|^STM32L431RB$|^STM32L476JG$|^STM32L476VC$|^STM32L431CB$|^STM32L462RE$|^STM32L471QG$|^STM32L431KB$|^STM32L471VG$|^STM32L476RG$|^STM32L475VC$|^STM32L452CC$|^STM32L475VG$|^STM32L433CC$|^STM32L431CC$|^STM32L452VC$|^STM32L443VC$|^STM32L462CE$|^STM32L476ZG$|^STM32L431RC$|^STM32L452CE$|^STM32L452VE$|^STM32L475RG$|^STM32L433RB$|^STM32L451RC$|^STM32L475RC$|^STM32L452RC$|^STM32L443CC$|^STM32L476QG$|^STM32L476VE$|^STM32L471ZE$|^STM32L471ZG$|^STM32L452RE$|^STM32L451RE$|^STM32L462VE$|^STM32L433RC$|^STM32L475VE$|^STM32L431KC$|^STM32L471VE$|^STM32L471QE$|^STM32L431VC$|^STM32L432KB$|^STM32L432KC$|^STM32L451CC$|^STM32L486VG$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1/__Lib_CAN_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_1)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1/__Lib_CAN_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L496AE$|^STM32L4A6QG$|^STM32L4A6ZG$|^STM32L496QE$|^STM32L496RG$|^STM32L4A6VG$|^STM32L496VE$|^STM32L496VG$|^STM32L496RE$|^STM32L496ZG$|^STM32L496QG$|^STM32L496ZE$|^STM32L4A6AG$|^STM32L4A6RG$|^STM32L496AG$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_12_L4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_12_L4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_12_L4/__Lib_CAN_12_L4.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_12_L4")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_12_L4)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_12_L4/__Lib_CAN_12_L4.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F302RB$|^STM32F302VD$|^STM32F358CC$|^STM32F303CC$|^STM32F303RE$|^STM32F383CC$|^STM32F358VC$|^STM32F373CB$|^STM32F378CC$|^STM32F303VD$|^STM32F373VB$|^STM32F378VC$|^STM32F303RB$|^STM32F313CC$|^STM32F334C8$|^STM32F373RB$|^STM32F303RD$|^STM32F302ZD$|^STM32F334C4$|^STM32F303R6$|^STM32F303VC$|^STM32F302ZE$|^STM32F334K4$|^STM32F302R8$|^STM32F302VB$|^STM32F313VC$|^STM32F373VC$|^STM32F302K8$|^STM32F303C6$|^STM32F303VB$|^STM32F328C8$|^STM32F358RC$|^STM32F303VE$|^STM32F302R6$|^STM32F373V8$|^STM32F313RC$|^STM32F373R8$|^STM32F303C8$|^STM32F303ZE$|^STM32F383RC$|^STM32F302RE$|^STM32F303CB$|^STM32F373C8$|^STM32F302VC$|^STM32F303R8$|^STM32F302K6$|^STM32F302C6$|^STM32F302RC$|^STM32F302CB$|^STM32F334K8$|^STM32F398VE$|^STM32F303K8$|^STM32F383VC$|^STM32F302CC$|^STM32F334C6$|^STM32F302C8$|^STM32F302VE$|^STM32F334R8$|^STM32F303ZD$|^STM32F378RC$|^STM32F334R6$|^STM32F303RC$|^STM32F373CC$|^STM32F373RC$|^STM32F302RD$|^STM32F303K6$|^STM32F334K6$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_1_3xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_1_3xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1_3xx/__Lib_CAN_1_3xx.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1_3xx")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_1_3xx)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1_3xx/__Lib_CAN_1_3xx.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32L4R9VG$|^STM32L4R9VI$|^STM32L4R5AI$|^STM32L4R5VG$|^STM32L4S7ZI$|^STM32L4R7VI$|^STM32L4R5ZI$|^STM32L4R5ZG$|^STM32L4S9VI$|^STM32L4S5VI$|^STM32L4R9ZG$|^STM32L4S9ZI$|^STM32L4R9ZI$|^STM32L4R5QG$|^STM32L4R7ZI$|^STM32L4S5AI$|^STM32L4S9AI$|^STM32L4R5VI$|^STM32L4S5ZI$|^STM32L4S7AI$|^STM32L4R5QI$|^STM32L4R9AG$|^STM32L4S5QI$|^STM32L4R9AI$|^STM32L4S7VI$|^STM32L4R5AG$|^STM32L4R7AI$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_1_L4 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_1_L4 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1_L4/__Lib_CAN_1_L4.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1_L4")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_1_L4)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_CAN_1_L4/__Lib_CAN_1_L4.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F207ZC$|^STM32F207ZG$|^STM32F205ZF$|^STM32F217VG$|^STM32F207IG$|^STM32F207VC$|^STM32F107RB$|^STM32F205ZC$|^STM32F205ZE$|^STM32F205RF$|^STM32F207IE$|^STM32F205RC$|^STM32F105R8$|^STM32F217VE$|^STM32F207IF$|^STM32F105VC$|^STM32F215VE$|^STM32F217IE$|^STM32F107RC$|^STM32F205VB$|^STM32F205VF$|^STM32F205RB$|^STM32F107VB$|^STM32F207VG$|^STM32F105RB$|^STM32F217IG$|^STM32F205VC$|^STM32F105V8$|^STM32F107VC$|^STM32F217ZG$|^STM32F105RC$|^STM32F215ZE$|^STM32F215VG$|^STM32F205ZG$|^STM32F205VG$|^STM32F105VB$|^STM32F217ZE$|^STM32F207IC$|^STM32F215ZG$|^STM32F215RE$|^STM32F205RE$|^STM32F207VE$|^STM32F207ZE$|^STM32F215RG$|^STM32F205RG$|^STM32F207ZF$|^STM32F207VF$|^STM32F205VE$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_CAN_12/__Lib_CAN_12.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_CAN_12")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_12)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_CAN_12/__Lib_CAN_12.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^STM32F103C6$|^STM32F103ZF$|^STM32F103TB$|^STM32F103VG$|^STM32F103ZG$|^STM32F103C4$|^STM32F103VD$|^STM32F103RC$|^STM32F103RG$|^STM32F103RB$|^STM32F103C8$|^STM32F103R8$|^STM32F103T4$|^STM32F103ZD$|^STM32F103RF$|^STM32F103T8$|^STM32F103ZE$|^STM32F103CB$|^STM32F103R6$|^STM32F103R4$|^STM32F103VE$|^STM32F103ZC$|^STM32F103T6$|^STM32F103VF$|^STM32F103V8$|^STM32F103RE$|^STM32F103VC$|^STM32F103RD$|^STM32F103VB$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_CAN_1/__Lib_CAN_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_CAN_1")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_1)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_CAN_1/__Lib_CAN_1.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^TM4C123AH6PM$|^TM4C123BH6PZ$|^TM4C123GH6ZXR$|^TM4C123BE6PZ$|^TM4C123GH6ZRB$|^TM4C123GH6PZ$|^TM4C123FE6PM$|^TM4C123FH6PM$|^TM4C123BE6PM$|^TM4C123BH6PGE$|^TM4C123BH6PM$|^TM4C123GH6PGE$|^TM4C123GH6PM$|^TM4C123GE6PZ$|^TM4C123AE6PM$|^TM4C123BH6ZRB$|^TM4C123GE6PM$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN12_ALT UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN12_ALT PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN12_ALT/__Lib_CAN12_ALT.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN12_ALT")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN12_ALT)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN12_ALT/__Lib_CAN12_ALT.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^TM4C1237D5PZ$|^TM4C1231D5PM$|^TM4C1230D5PM$|^TM4C1231E6PZ$|^TM4C1230C3PM$|^TM4C1237H6PM$|^TM4C1237E6PM$|^TM4C1237E6PZ$|^TM4C1237H6PGE$|^TM4C1232D5PM$|^TM4C1233H6PZ$|^TM4C1236E6PM$|^TM4C1236H6PM$|^TM4C1237H6PZ$|^TM4C1236D5PM$|^TM4C1230H6PM$|^TM4C1231E6PM$|^TM4C1233H6PM$|^TM4C1233E6PM$|^TM4C1231C3PM$|^TM4C1232C3PM$|^TM4C1230E6PM$|^TM4C1233D5PM$|^TM4C1233H6PGE$|^TM4C1233C3PM$|^TM4C1233E6PZ$|^TM4C1231D5PZ$|^TM4C1231H6PGE$|^TM4C1231H6PM$|^TM4C1232H6PM$|^TM4C1231H6PZ$|^TM4C1233D5PZ$|^TM4C1232E6PM$|^TM4C1237D5PM$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN1_ALT UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN1_ALT PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN1_ALT/__Lib_CAN1_ALT.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN1_ALT")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN1_ALT)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN1_ALT/__Lib_CAN1_ALT.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^TM4C129XNCZAD$|^TM4C129XKCZAD$|^TM4C1290NCPDT$|^TM4C1294NCPDT$|^TM4C129EKCPDT$|^TM4C129DNCZAD$|^TM4C129CNCPDT$|^TM4C129ENCPDT$|^TM4C1299NCZAD$|^TM4C1292NCPDT$|^TM4C1297NCZAD$|^TM4C129DNCPDT$|^TM4C1290NCZAD$|^TM4C1294NCZAD$|^TM4C129ENCZAD$|^TM4C1294KCPDT$|^TM4C1292NCZAD$|^TM4C129CNCZAD$|^TM4C129LNCZAD$|^TM4C1299KCZAD$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_2 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_2 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN_2/__Lib_CAN_2.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN_2")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_2)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_CAN_2/__Lib_CAN_2.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK64FN1M0.+12$|^MK64FX512.+12$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_0/__Lib_CAN_0.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_0")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_0)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_0/__Lib_CAN_0.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MKV42F256.+16$|^MKV46F128.+16$|^MKV44F128.+16$|^MKV42F64.+16$|^MKV46F256.+16$|^MKV44F64.+16$|^MKV42F128.+16$|^MKV44F256.+16$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_MKV4x_01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_MKV4x_01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_MKV4x_01/__Lib_CAN_MKV4x_01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_MKV4x_01")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_MKV4x_01)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_MKV4x_01/__Lib_CAN_MKV4x_01.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK66FN2M0.+18$|^MK66FX1M0.+18$|^MK65FN2M0.+18$|^MK65FX1M0.+18$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_01/__Lib_CAN_01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_01")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_01)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_CAN_01/__Lib_CAN_01.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MKV58F1M0.+24$|^MKV58F512.+24$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_012 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_012 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_CAN_012/__Lib_CAN_012.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_CAN_012")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_012)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_CAN_012/__Lib_CAN_012.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MKV56F1M0.+24$|^MKV56F512.+24$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_CAN_01/__Lib_CAN_01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_CAN_01")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_01)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M7/__Lib_CAN_01/__Lib_CAN_01.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^MK60DN256.+10$|^MK60DN512.+10$|^MK60DX256.+10$")


    if (NOT TARGET MikroC.CAN )
        add_library(__Lib_CAN_01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CAN_01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_CAN_01/__Lib_CAN_01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_CAN_01")

    set(MikroC.CAN_DEFINITIONS )


    if (NOT TARGET MikroC.CAN )
        add_library(MikroC.CAN INTERFACE)
    endif()

    target_link_libraries(MikroC.CAN INTERFACE __Lib_CAN_01)
    set(MikroC.CAN_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4 DSP/__Lib_CAN_01/__Lib_CAN_01.emcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.CAN  DEFAULT_MSG
                                    MikroC.CAN_LIBRARIES)


    set(MikroC.CAN_INCLUDE_DIRS ${MikroC.CAN_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.CAN_LIBRARIES})
    
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

