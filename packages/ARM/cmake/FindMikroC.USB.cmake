if (${MCU_NAME} MATCHES "^STM32F779AI$|^STM32F723ZE$|^STM32F769IG$|^STM32F723ZC$|^STM32F722VC$|^STM32F732RE$|^STM32F745ZE$|^STM32F777II$|^STM32F723IE$|^STM32F756ZG$|^STM32F756BG$|^STM32F745IG$|^STM32F746ZE$|^STM32F769NG$|^STM32F722IE$|^STM32F746ZG$|^STM32F756IG$|^STM32F767ZI$|^STM32F722RC$|^STM32F746NE$|^STM32F769II$|^STM32F745VG$|^STM32F765NI$|^STM32F765IG$|^STM32F722RE$|^STM32F746IG$|^STM32F777VI$|^STM32F723IC$|^STM32F722ZE$|^STM32F767BI$|^STM32F767II$|^STM32F722VE$|^STM32F779II$|^STM32F746NG$|^STM32F765BG$|^STM32F722IC$|^STM32F732IE$|^STM32F765VI$|^STM32F777NI$|^STM32F733VE$|^STM32F746BG$|^STM32F756VG$|^STM32F756NG$|^STM32F722ZC$|^STM32F745ZG$|^STM32F779BI$|^STM32F732VE$|^STM32F733IE$|^STM32F746BE$|^STM32F765II$|^STM32F769AI$|^STM32F746VE$|^STM32F769BI$|^STM32F767VG$|^STM32F769BG$|^STM32F767NI$|^STM32F777ZI$|^STM32F767VI$|^STM32F746VG$|^STM32F765ZG$|^STM32F767IG$|^STM32F765NG$|^STM32F779NI$|^STM32F765VG$|^STM32F765ZI$|^STM32F745VE$|^STM32F767BG$|^STM32F777BI$|^STM32F769NI$|^STM32F732ZE$|^STM32F733ZE$|^STM32F723VE$|^STM32F767NG$|^STM32F746IE$|^STM32F745IE$|^STM32F765BI$|^STM32F767ZG$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32F7xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32F7xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_USB_32F7xx/__Lib_USB_32F7xx.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_USB_32F7xx")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32F7xx)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M7/__Lib_USB_32F7xx/__Lib_USB_32F7xx.emcl\"")


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

if (${MCU_NAME} MATCHES "^STM32L053R6$|^STM32L053C6$|^STM32L083V8$|^STM32L072CZ$|^STM32L083RB$|^STM32L083CB$|^STM32L072VB$|^STM32L062K8$|^STM32L052T6$|^STM32L072RB$|^STM32L072VZ$|^STM32L053R8$|^STM32L073CB$|^STM32L072CB$|^STM32L073VZ$|^STM32L072V8$|^STM32L072KB$|^STM32L082CZ$|^STM32L052K8$|^STM32L072RZ$|^STM32L052T8$|^STM32L073RB$|^STM32L052R8$|^STM32L082KZ$|^STM32L073RZ$|^STM32L083RZ$|^STM32L052K6$|^STM32L052C8$|^STM32L073CZ$|^STM32L073VB$|^STM32L052C6$|^STM32L083VZ$|^STM32L052R6$|^STM32L073V8$|^STM32L083CZ$|^STM32L063C8$|^STM32L072KZ$|^STM32L083VB$|^STM32L053C8$|^STM32L063R8$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32L0x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32L0x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_USB_32L0x/__Lib_USB_32L0x.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_USB_32L0x")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32L0x)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_USB_32L0x/__Lib_USB_32L0x.emcl\"")


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

if (${MCU_NAME} MATCHES "^STM32F042F6$|^STM32F042K4$|^STM32F042C4$|^STM32F042F4$|^STM32F072RB$|^STM32F072V8$|^STM32F070CB$|^STM32F072CB$|^STM32F078CB$|^STM32F078RB$|^STM32F048G6$|^STM32F048C6$|^STM32F042C6$|^STM32F042G6$|^STM32F070RB$|^STM32F042G4$|^STM32F070F6$|^STM32F072R8$|^STM32F042K6$|^STM32F072VB$|^STM32F042T6$|^STM32F072C8$|^STM32F048T6$|^STM32F070C6$|^STM32F078VB$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32FM0x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32FM0x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_USB_32FM0x/__Lib_USB_32FM0x.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_USB_32FM0x")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32FM0x)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M0/__Lib_USB_32FM0x/__Lib_USB_32FM0x.emcl\"")


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

if (${MCU_NAME} MATCHES "^STM32F302RB$|^STM32F302VD$|^STM32F303CC$|^STM32F303RE$|^STM32F383CC$|^STM32F373CB$|^STM32F303VD$|^STM32F373VB$|^STM32F303RB$|^STM32F373RB$|^STM32F303RD$|^STM32F302ZD$|^STM32F303VC$|^STM32F302ZE$|^STM32F302R8$|^STM32F302VB$|^STM32F373VC$|^STM32F302K8$|^STM32F303VB$|^STM32F303VE$|^STM32F302R6$|^STM32F373V8$|^STM32F373R8$|^STM32F303ZE$|^STM32F383RC$|^STM32F302RE$|^STM32F303CB$|^STM32F373C8$|^STM32F302VC$|^STM32F302K6$|^STM32F302C6$|^STM32F302RC$|^STM32F302CB$|^STM32F383VC$|^STM32F302CC$|^STM32F302C8$|^STM32F302VE$|^STM32F303ZD$|^STM32F303RC$|^STM32F373CC$|^STM32F373RC$|^STM32F302RD$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32F3xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32F3xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_USB_32F3xx/__Lib_USB_32F3xx.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_USB_32F3xx")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32F3xx)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_USB_32F3xx/__Lib_USB_32F3xx.emcl\"")


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

if (${MCU_NAME} MATCHES "^STM32F427ZI$|^STM32F401VE$|^STM32F401RD$|^STM32L476MG$|^STM32L4R9ZI$|^STM32F437ZG$|^STM32L496ZE$|^STM32L496RG$|^STM32L4S5ZI$|^STM32L4S7ZI$|^STM32F417ZE$|^STM32L4R5AI$|^STM32F412ZE$|^STM32F429IG$|^STM32F429BE$|^STM32F446ZC$|^STM32L4R5AG$|^STM32L4R5QG$|^STM32F427II$|^STM32F439VI$|^STM32F429BG$|^STM32F429AG$|^STM32F479II$|^STM32F429VE$|^STM32F429BI$|^STM32F401RB$|^STM32L496QE$|^STM32F411RC$|^STM32F446VC$|^STM32F407VG$|^STM32F479IG$|^STM32F415VG$|^STM32L496VE$|^STM32L4R7VI$|^STM32F427IG$|^STM32L475VG$|^STM32F417VE$|^STM32L4R9VG$|^STM32F469NI$|^STM32F437II$|^STM32F429ZE$|^STM32F429VG$|^STM32F411CE$|^STM32L4S5QI$|^STM32F429IE$|^STM32F407ZE$|^STM32F439BG$|^STM32F405OG$|^STM32L4A6QG$|^STM32F415RG$|^STM32L4R9ZG$|^STM32F417ZG$|^STM32F439ZG$|^STM32F415OG$|^STM32F401VC$|^STM32L4A6ZG$|^STM32F446ME$|^STM32F479BG$|^STM32F469AG$|^STM32F411CC$|^STM32F412ZG$|^STM32L4S9AI$|^STM32F417IG$|^STM32F407ZG$|^STM32F446ZE$|^STM32F439AI$|^STM32L4R9VI$|^STM32F437VG$|^STM32L496VG$|^STM32L4R5ZI$|^STM32F439II$|^STM32F439VG$|^STM32F429II$|^STM32F429NG$|^STM32F469BG$|^STM32F469NE$|^STM32L4A6RG$|^STM32F411VC$|^STM32L475RC$|^STM32L4R9AI$|^STM32F479ZI$|^STM32L4R5VG$|^STM32F405VG$|^STM32L496QG$|^STM32F469VE$|^STM32F401CD$|^STM32F405OE$|^STM32F401CB$|^STM32F469II$|^STM32F469ZE$|^STM32L4R5VI$|^STM32F427AG$|^STM32F407VE$|^STM32F446VE$|^STM32F469IE$|^STM32L4S7VI$|^STM32L4R5QI$|^STM32F446RE$|^STM32F401RC$|^STM32L476ME$|^STM32F429VI$|^STM32F405ZG$|^STM32F405RG$|^STM32L4S7AI$|^STM32F413MH$|^STM32F411VE$|^STM32L4A6AG$|^STM32L475VE$|^STM32L4S9ZI$|^STM32L4S5VI$|^STM32L4A6VG$|^STM32L4R7AI$|^STM32F479AI$|^STM32F427VI$|^STM32F469VI$|^STM32L496ZG$|^STM32F469NG$|^STM32L4R9AG$|^STM32F429ZI$|^STM32F469ZG$|^STM32F437VI$|^STM32F469BI$|^STM32F439ZI$|^STM32F423ZH$|^STM32F401CE$|^STM32F427VG$|^STM32F439IG$|^STM32F427ZG$|^STM32L496RE$|^STM32F439NG$|^STM32F415ZG$|^STM32F429NI$|^STM32F469ZI$|^STM32F429NE$|^STM32L4R5ZG$|^STM32F479AG$|^STM32F439NI$|^STM32L475RG$|^STM32F439BI$|^STM32L4S5AI$|^STM32F479NG$|^STM32F413ZG$|^STM32L475RE$|^STM32F413ZH$|^STM32F446RC$|^STM32F469IG$|^STM32F407IG$|^STM32F417VG$|^STM32L496AE$|^STM32F401VB$|^STM32F479ZG$|^STM32F469AE$|^STM32F407IE$|^STM32F427AI$|^STM32F469BE$|^STM32F423MH$|^STM32F429AI$|^STM32F413MG$|^STM32F479VI$|^STM32F437ZI$|^STM32F401RE$|^STM32F479VG$|^STM32F469AI$|^STM32L4S9VI$|^STM32F401CC$|^STM32F479BI$|^STM32F469VG$|^STM32F479NI$|^STM32F446MC$|^STM32F411RE$|^STM32F437AI$|^STM32F401VD$|^STM32F437IG$|^STM32F429ZG$|^STM32L475VC$|^STM32L496AG$|^STM32F417IE$|^STM32L4R7ZI$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32F4xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32F4xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_USB_32F4xx/__Lib_USB_32F4xx.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_USB_32F4xx")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32F4xx)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M4/__Lib_USB_32F4xx/__Lib_USB_32F4xx.emcl\"")


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

if (${MCU_NAME} MATCHES "^STM32F102C6$|^STM32F103C6$|^STM32F103ZF$|^STM32F102CB$|^STM32F103TB$|^STM32F103VG$|^STM32F103ZG$|^STM32F103C4$|^STM32F103VD$|^STM32F103RC$|^STM32F103RG$|^STM32F103RB$|^STM32F103C8$|^STM32F103R8$|^STM32F103T4$|^STM32F103ZD$|^STM32F102R4$|^STM32F103RF$|^STM32F102C8$|^STM32F102RB$|^STM32F103T8$|^STM32F103ZE$|^STM32F103CB$|^STM32F102R6$|^STM32F103R6$|^STM32F103R4$|^STM32F103VE$|^STM32F103ZC$|^STM32F103T6$|^STM32F103VF$|^STM32F103V8$|^STM32F103RE$|^STM32F102R8$|^STM32F103VC$|^STM32F102C4$|^STM32F103RD$|^STM32F103VB$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32F10x UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32F10x PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F10x/__Lib_USB_32F10x.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F10x")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32F10x)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F10x/__Lib_USB_32F10x.emcl\"")


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

if (${MCU_NAME} MATCHES "^STM32F105RB$|^STM32F105V8$|^STM32F107VC$|^STM32F105VC$|^STM32F107VB$|^STM32F107RC$|^STM32F105VB$|^STM32F105R8$|^STM32F105RC$|^STM32F107RB$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32F10x_CL UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32F10x_CL PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F10x_CL/__Lib_USB_32F10x_CL.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F10x_CL")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32F10x_CL)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F10x_CL/__Lib_USB_32F10x_CL.emcl\"")


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

if (${MCU_NAME} MATCHES "^STM32F207ZC$|^STM32F207ZG$|^STM32F205ZF$|^STM32F217VG$|^STM32F207IG$|^STM32F207VC$|^STM32F205ZC$|^STM32F205ZE$|^STM32F205RF$|^STM32F207IE$|^STM32F205RC$|^STM32F217VE$|^STM32F207IF$|^STM32F215VE$|^STM32F217IE$|^STM32F205VB$|^STM32F205VF$|^STM32F205RB$|^STM32F207VG$|^STM32F217IG$|^STM32F205VC$|^STM32F217ZG$|^STM32F215ZE$|^STM32F215VG$|^STM32F205ZG$|^STM32F205VG$|^STM32F217ZE$|^STM32F207IC$|^STM32F215ZG$|^STM32F215RE$|^STM32F205RE$|^STM32F207VE$|^STM32F207ZE$|^STM32F215RG$|^STM32F205RG$|^STM32F207ZF$|^STM32F207VF$|^STM32F205VE$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32F2xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32F2xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F2xx/__Lib_USB_32F2xx.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F2xx")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32F2xx)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32F2xx/__Lib_USB_32F2xx.emcl\"")


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

if (${MCU_NAME} MATCHES "^STM32L151RE$|^STM32L151VC$|^STM32L151VE$|^STM32L100C6_A$|^STM32L151R6$|^STM32L162VE$|^STM32L152R6$|^STM32L151V8$|^STM32L151ZC$|^STM32L162ZD$|^STM32L151C8$|^STM32L151QC$|^STM32L151R8$|^STM32L152V8_A$|^STM32L151UC$|^STM32L152C8_A$|^STM32L100R8$|^STM32L152RD$|^STM32L162ZE$|^STM32L100R8_A$|^STM32L162QD$|^STM32L151ZE$|^STM32L152ZC$|^STM32L152R8$|^STM32L152QE$|^STM32L162RE$|^STM32L162RD$|^STM32L152RB$|^STM32L152ZE$|^STM32L151QE$|^STM32L152RE$|^STM32L162VC_A$|^STM32L151C8_A$|^STM32L152ZD$|^STM32L152CB$|^STM32L162VD$|^STM32L152C8$|^STM32L151VC_A$|^STM32L151VB_A$|^STM32L152QC$|^STM32L152VB$|^STM32L152VD$|^STM32L152V8$|^STM32L151R8_A$|^STM32L100C6$|^STM32L152VE$|^STM32L152C6$|^STM32L151VB$|^STM32L151RD$|^STM32L151ZD$|^STM32L162RC$|^STM32L151C6_A$|^STM32L151VD$|^STM32L151RB_A$|^STM32L152RC_A$|^STM32L151CC$|^STM32L100RB$|^STM32L151RC$|^STM32L152CB_A$|^STM32L152VC_A$|^STM32L152R6_A$|^STM32L152VC$|^STM32L151CB_A$|^STM32L151R6_A$|^STM32L100RC$|^STM32L152QD$|^STM32L152RB_A$|^STM32L151C6$|^STM32L100RB_A$|^STM32L162RC_A$|^STM32L152CC$|^STM32L151VD_X$|^STM32L151QD$|^STM32L152R8_A$|^STM32L152RC$|^STM32L162VC$|^STM32L152VB_A$|^STM32L152VD_X$|^STM32L152C6_A$|^STM32L151CB$|^STM32L151RB$|^STM32L151V8_A$|^STM32L151RC_A$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB_32L1xx UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB_32L1xx PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32L1xx/__Lib_USB_32L1xx.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32L1xx")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB_32L1xx)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/STM/ST M3/__Lib_USB_32L1xx/__Lib_USB_32L1xx.emcl\"")


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

if (${MCU_NAME} MATCHES "^TM4C1233D5PZ$|^TM4C1233E6PZ$|^TM4C1233H6PZ$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USBD_J01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USBD_J01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_J01/__Lib_USBD_J01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_J01")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USBD_J01)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_J01/__Lib_USBD_J01.emcl\"")


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

if (${MCU_NAME} MATCHES "^TM4C129XNCZAD$|^TM4C129XKCZAD$|^TM4C1290NCPDT$|^TM4C1294NCPDT$|^TM4C129EKCPDT$|^TM4C129DNCZAD$|^TM4C129CNCPDT$|^TM4C129ENCPDT$|^TM4C1299NCZAD$|^TM4C1292NCPDT$|^TM4C1297NCZAD$|^TM4C129DNCPDT$|^TM4C1290NCZAD$|^TM4C1294NCZAD$|^TM4C129ENCZAD$|^TM4C1294KCPDT$|^TM4C1292NCZAD$|^TM4C129CNCZAD$|^TM4C129LNCZAD$|^TM4C1299KCZAD$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USBH_L67_1 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USBH_L67_1 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_L67_1/__Lib_USBH_L67_1.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_L67_1")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USBH_L67_1)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_L67_1/__Lib_USBH_L67_1.emcl\"")


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

if (${MCU_NAME} MATCHES "^TM4C1233H6PGE$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USBD_L67 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USBD_L67 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_L67/__Lib_USBD_L67.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_L67")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USBD_L67)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_L67/__Lib_USBD_L67.emcl\"")


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

if (${MCU_NAME} MATCHES "^TM4C1237D5PM$|^TM4C1237H6PM$|^TM4C1236H6PM$|^TM4C123FE6PM$|^TM4C123FH6PM$|^TM4C1236E6PM$|^TM4C1237E6PM$|^TM4C123GH6PM$|^TM4C123GE6PM$|^TM4C1236D5PM$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USBH_D45 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USBH_D45 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_D45/__Lib_USBH_D45.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_D45")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USBH_D45)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_D45/__Lib_USBH_D45.emcl\"")


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

if (${MCU_NAME} MATCHES "^TM4C1232E6PM$|^TM4C1233D5PM$|^TM4C1233E6PM$|^TM4C1232D5PM$|^TM4C1232H6PM$|^TM4C1233C3PM$|^TM4C1232C3PM$|^TM4C1233H6PM$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USBD_D45 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USBD_D45 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_D45/__Lib_USBD_D45.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_D45")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USBD_D45)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBD_D45/__Lib_USBD_D45.emcl\"")


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

if (${MCU_NAME} MATCHES "^TM4C1237D5PZ$|^TM4C1237H6PZ$|^TM4C123GH6PZ$|^TM4C123GE6PZ$|^TM4C1237E6PZ$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USBH_J01 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USBH_J01 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_J01/__Lib_USBH_J01.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_J01")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USBH_J01)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_J01/__Lib_USBH_J01.emcl\"")


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

if (${MCU_NAME} MATCHES "^TM4C123GH6ZXR$|^TM4C123GH6ZRB$|^TM4C123GH6PGE$|^TM4C1237H6PGE$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USBH_L67 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USBH_L67 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_L67/__Lib_USBH_L67.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_L67")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USBH_L67)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/TI/TI M4/__Lib_USBH_L67/__Lib_USBH_L67.emcl\"")


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

if (${MCU_NAME} MATCHES "^MK22FN1M0.+12$|^MK64FN1M0.+12$|^MK64FX512.+12$|^MK66FN2M0.+18$|^MK80FN256.+15$|^MK66FX1M0.+18$|^MK22FX512.+12$|^MK65FN2M0.+18$|^MK22FN128.+10$|^MK82FN256.+15$|^MK22FN256.+12$|^MK22FN128.+12$|^MK22FN512.+12$|^MK65FX1M0.+18$")


    if (NOT TARGET MikroC.USB )
        add_library(__Lib_USB UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_USB PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_USB/__Lib_USB.emcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_USB")

    set(MikroC.USB_DEFINITIONS )


    if (NOT TARGET MikroC.USB )
        add_library(MikroC.USB INTERFACE)
    endif()

    target_link_libraries(MikroC.USB INTERFACE __Lib_USB)
    set(MikroC.USB_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/NXP/NXP M4/__Lib_USB/__Lib_USB.emcl\"")


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

