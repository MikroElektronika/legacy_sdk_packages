if (${MCU_NAME} MATCHES "^PIC32MX210F016B$|^PIC32MX230F256B$|^PIC32MX230F128H$|^PIC32MX110F016D$|^PIC32MX130F128L$|^PIC32MX250F128B$|^PIC32MX550F256H$|^PIC32MX170F256B$|^PIC32MX150F256L$|^PIC32MX550F256L$|^PIC32MX250F128C$|^PIC32MX130F064C$|^PIC32MX270F512L$|^PIC32MX130F064D$|^PIC32MX150F128D$|^PIC32MX230F064C$|^PIC32MX130F128H$|^PIC32MX250F128D$|^PIC32MX220F032B$|^PIC32MX270F256DB$|^PIC32MX570F512H$|^PIC32MX130F064B$|^PIC32MX230F128L$|^PIC32MX120F032C$|^PIC32MX530F128H$|^PIC32MX120F064H$|^PIC32MX150F256H$|^PIC32MX220F032D$|^PIC32MX230F064B$|^PIC32MX230F064D$|^PIC32MX120F032B$|^PIC32MX170F256D$|^PIC32MX170F512H$|^PIC32MX270F512H$|^PIC32MX210F016D$|^PIC32MX250F256H$|^PIC32MX270F256D$|^PIC32MX270F256B$|^PIC32MX230F256D$|^PIC32MX150F128B$|^PIC32MX570F512L$|^PIC32MX110F016B$|^PIC32MX170F512L$|^PIC32MX130F256D$|^PIC32MX210F016C$|^PIC32MX120F032D$|^PIC32MX220F032C$|^PIC32MX130F256B$|^PIC32MX110F016C$|^PIC32MX250F256L$|^PIC32MX150F128C$|^PIC32MX530F128L$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System_12 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System_12 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_SoftResetDma UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SoftResetDma PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_CP0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CP0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_System_12
__Lib_SoftResetDma
__Lib_Math
__Lib_CP0
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_000/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX675F256H$|^PIC32MX370F512H$|^PIC32MX534F064H$|^PIC32MX340F512H$|^PIC32MX460F512L$|^PIC32MX470F512H$|^PIC32MX664F128H$|^PIC32MX350F256H$|^PIC32MX360F256L$|^PIC32MX450F128H$|^PIC32MX360F512L$|^PIC32MX775F512H$|^PIC32MX440F128L$|^PIC32MX450F256HB$|^PIC32MX695F512L$|^PIC32MX695F512H$|^PIC32MX664F128L$|^PIC32MX430F064L$|^PIC32MX564F128L$|^PIC32MX664F064L$|^PIC32MX450F256L$|^PIC32MX775F256H$|^PIC32MX575F512L$|^PIC32MX430F064H$|^PIC32MX470F512LB$|^PIC32MX350F256L$|^PIC32MX675F512L$|^PIC32MX564F064L$|^PIC32MX470F512L$|^PIC32MX575F512H$|^PIC32MX450F256H$|^PIC32MX440F256H$|^PIC32MX564F128H$|^PIC32MX330F064H$|^PIC32MX575F256L$|^PIC32MX440F128H$|^PIC32MX440F512H$|^PIC32MX675F256L$|^PIC32MX775F512L$|^PIC32MX350F128H$|^PIC32MX534F064L$|^PIC32MX340F128L$|^PIC32MX460F256L$|^PIC32MX764F128H$|^PIC32MX795F512L$|^PIC32MX564F064H$|^PIC32MX575F256H$|^PIC32MX764F128L$|^PIC32MX370F512L$|^PIC32MX795F512H$|^PIC32MX340F128H$|^PIC32MX450F128L$|^PIC32MX330F064L$|^PIC32MX664F064H$|^PIC32MX675F512H$|^PIC32MX350F128L$|^PIC32MX775F256L$|^PIC32MX340F256H$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_SoftResetDma UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SoftResetDma PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_CP0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CP0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_SoftResetDma
__Lib_Math
__Lib_System
__Lib_CP0
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_001/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MX320F032H$|^PIC32MX320F128H$|^PIC32MX320F128L$|^PIC32MX320F064H$|^PIC32MX420F032H$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_SoftReset UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SoftReset PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_CP0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CP0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_SoftReset
__Lib_Math
__Lib_System
__Lib_CP0
__Lib_MathDouble)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MIPS32/__Lib_System_002/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ2048ECM124$|^PIC32MZ2048ECH144$|^PIC32MZ1024ECH124$|^PIC32MZ2048ECG124$|^PIC32MZ1024ECH144$|^PIC32MZ1024ECH064$|^PIC32MZ2048ECM100$|^PIC32MZ1024ECG064$|^PIC32MZ2048ECG064$|^PIC32MZ1024ECM144$|^PIC32MZ1024ECG144$|^PIC32MZ2048ECH124$|^PIC32MZ2048ECM064$|^PIC32MZ2048ECH064$|^PIC32MZ2048ECG100$|^PIC32MZ1024ECG124$|^PIC32MZ2048ECG144$|^PIC32MZ1024ECG100$|^PIC32MZ1024ECM124$|^PIC32MZ1024ECH100$|^PIC32MZ2048ECM144$|^PIC32MZ2048ECH100$|^PIC32MZ1024ECM064$|^PIC32MZ1024ECM100$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System_MZ UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System_MZ PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_CP0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CP0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_SoftResetDma UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SoftResetDma PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_System_MZ
__Lib_Math
__Lib_CP0
__Lib_MathDouble
__Lib_SoftResetDma)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV/__Lib_System_000/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

if (${MCU_NAME} MATCHES "^PIC32MZ0512EFF064$|^PIC32MZ2048EFG064$|^PIC32MZ1024EFK064$|^PIC32MZ2048EFH064$|^PIC32MZ1024EFK100$|^PIC32MZ0512EFK124$|^PIC32MZ1024EFH144$|^PIC32MZ0512EFF100$|^PIC32MZ1024EFE124$|^PIC32MZ1024EFK124$|^PIC32MZ1024EFM100$|^PIC32MZ1024EFM064$|^PIC32MZ2048EFM100$|^PIC32MZ2048EFM064$|^PIC32MZ0512EFE144$|^PIC32MZ1024EFF124$|^PIC32MZ1024EFF100$|^PIC32MZ1024EFE100$|^PIC32MZ2048EFM144$|^PIC32MZ0512EFE100$|^PIC32MZ2048EFM124$|^PIC32MZ1024EFG124$|^PIC32MZ1024EFG100$|^PIC32MZ0512EFK144$|^PIC32MZ1024EFH100$|^PIC32MZ1024EFG064$|^PIC32MZ2048EFG100$|^PIC32MZ1024EFG144$|^PIC32MZ1024EFH064$|^PIC32MZ1024EFM124$|^PIC32MZ0512EFK064$|^PIC32MZ2048EFG124$|^PIC32MZ0512EFF144$|^PIC32MZ2048EFG144$|^PIC32MZ1024EFF064$|^PIC32MZ0512EFE124$|^PIC32MZ1024EFK144$|^PIC32MZ1024EFM144$|^PIC32MZ0512EFF124$|^PIC32MZ2048EFH100$|^PIC32MZ0512EFE064$|^PIC32MZ0512EFK100$|^PIC32MZ1024EFE064$|^PIC32MZ1024EFH124$|^PIC32MZ1024EFE144$|^PIC32MZ2048EFH124$|^PIC32MZ2048EFH144$|^PIC32MZ1024EFF144$")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_CP0 UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_CP0 PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_Math UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_Math PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_System_MZ_EF UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_System_MZ_EF PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_MathDouble_MZ_EF UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_MathDouble_MZ_EF PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000")


    if (NOT TARGET MikroC.System )
        add_library(__Lib_SoftResetDma UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_SoftResetDma PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000/MikroC.System.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000")

    set(MikroC.System_DEFINITIONS )


    if (NOT TARGET MikroC.System )
        add_library(MikroC.System INTERFACE)
    endif()

    target_link_libraries(MikroC.System INTERFACE __Lib_CP0
__Lib_Math
__Lib_System_MZ_EF
__Lib_MathDouble_MZ_EF
__Lib_SoftResetDma)
    set(MikroC.System_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/MICROAPTIV_FP/__Lib_System_000/MikroC.System.a\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.System  DEFAULT_MSG
                                    MikroC.System_LIBRARIES)


    set(MikroC.System_INCLUDE_DIRS ${MikroC.System_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.System_LIBRARIES})
    
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

