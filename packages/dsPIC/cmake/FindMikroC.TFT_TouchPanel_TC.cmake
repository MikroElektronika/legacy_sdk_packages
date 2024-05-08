if (${MCU_NAME} MATCHES "^dsPIC30F4013$")


    if (NOT TARGET MikroC.TFT_TouchPanel_TC )
        add_library(__Lib_TouchPanel_TFT_TC UNKNOWN IMPORTED)
    endif()
    set_target_properties(__Lib_TouchPanel_TFT_TC PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "MikroC"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_TouchPanel_TFT_TC/__Lib_TouchPanel_TFT_TC.mcl"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_TouchPanel_TFT_TC")

    set(MikroC.TFT_TouchPanel_TC_DEFINITIONS )


    if (NOT TARGET MikroC.TFT_TouchPanel_TC )
        add_library(MikroC.TFT_TouchPanel_TC INTERFACE)
    endif()

    target_link_libraries(MikroC.TFT_TouchPanel_TC INTERFACE __Lib_TouchPanel_TFT_TC)
    set(MikroC.TFT_TouchPanel_TC_LIBRARIES "\"${CMAKE_CURRENT_LIST_DIR}/../bin/__Lib_TouchPanel_TFT_TC/__Lib_TouchPanel_TFT_TC.mcl\"")


    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(MikroC.TFT_TouchPanel_TC  DEFAULT_MSG
                                    MikroC.TFT_TouchPanel_TC_LIBRARIES)


    set(MikroC.TFT_TouchPanel_TC_INCLUDE_DIRS ${MikroC.TFT_TouchPanel_TC_INCLUDE_DIR} )



    list(APPEND LEGACY_LIBRARIES_LIST ${MikroC.TFT_TouchPanel_TC_LIBRARIES})
    
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
