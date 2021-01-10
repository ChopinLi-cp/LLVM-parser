#cmake_minimum_required(VERSION 3.10)
#
#add_library(UnitTest STATIC
#        main.cpp
#        )
##add_library(llvmir-emul ALIAS llvmir-emul)
#
#target_compile_features(UnitTest PUBLIC cxx_std_14)
#
#target_include_directories(UnitTest
#        PUBLIC
#        $<BUILD_INTERFACE:${RETDEC_INCLUDE_DIR}>
#        $<INSTALL_INTERFACE:${RETDEC_INSTALL_INCLUDE_DIR}>
#        )
#
#target_link_libraries(UnitTest
#        PUBLIC
#        LLVM
#        )
#
#set_target_properties(UnitTest
#        PROPERTIES
#        OUTPUT_NAME "llvmir-emul"
#        )
#
## Install includes.
#install(
#        DIRECTORY ${RETDEC_INCLUDE_DIR}/retdec/llvmir-emul
#        DESTINATION ${RETDEC_INSTALL_INCLUDE_DIR}/retdec
#)
#
## Install libs.
#install(TARGETS llvmir-emul
#        EXPORT llvmir-emul-targets
#        ARCHIVE DESTINATION ${RETDEC_INSTALL_LIB_DIR}
#        LIBRARY DESTINATION ${RETDEC_INSTALL_LIB_DIR}
#        )
#
## Export targets.
#install(EXPORT llvmir-emul-targets
#        FILE "retdec-llvmir-emul-targets.cmake"
#        NAMESPACE retdec::
#        DESTINATION ${RETDEC_INSTALL_CMAKE_DIR}
#        )
#
## Install CMake files.
#configure_file(
#        "retdec-llvmir-emul-config.cmake"
#        "${CMAKE_CURRENT_BINARY_DIR}/retdec-llvmir-emul-config.cmake"
#        @ONLY
#)
#install(
#        FILES
#        "${CMAKE_CURRENT_BINARY_DIR}/retdec-llvmir-emul-config.cmake"
#        DESTINATION
#        "${RETDEC_INSTALL_CMAKE_DIR}"
#)

cmake_minimum_required(VERSION 3.10)
project(UnitTest)

set(CMAKE_CXX_STANDARD 14)

set(LLVM_LINK_COMPONENTS
        BitWriter
        IRReader
        Object
        InstCombine
        ipo
        AsmParser
        BitReader
        MCParser
        CodeGen
        ProfileData   # needed by ScalarOpts
        Support       # has to be after LLVMProfileData
        ScalarOpts
        TransformUtils
        Analysis
        Target
        Core
        MC
        Object
        )

if (LLVM_HOME_PATH)

    find_package(LLVM
            REQUIRED
            CONFIG
            PATHS ${LLVM_HOME_PATH})

    #include_directories(${LLVM_INCLUDE_DIRS})
    #add_definitions(${LLVM_DEFINITIONS})

    #add_executable(LLVMEmu main.cpp)

    #llvm_map_components_to_libnames(llvm_libs ${LLVM_LINK_COMPONENTS})
    ##llvm_map_components_to_libnames(llvm_libs clang)

    #target_link_libraries(LLVMEmu ${llvm_libs})


    message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
    message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

    # Set your project compile flags.
    # E.g. if using the C++ header files
    # you will need to enable C++11 support
    # for your compiler.

    include_directories(${LLVM_INCLUDE_DIRS})
    add_definitions(${LLVM_DEFINITIONS})

    # Now build our tools
    add_executable(UnitTest main.cpp)

    # Find the libraries that correspond to the LLVM components
    # that we wish to use
    #llvm_map_components_to_libnames(llvm_libs support core irreader)
    llvm_map_components_to_libnames(llvm_libs ${LLVM_LINK_COMPONENTS})
    #message(STATUS "${LLVM_LINK_COMPONENTS}")

    # Link against LLVM libraries
    target_link_libraries(UnitTest ${llvm_libs})

else()
    message(FATAL_ERROR)
endif()
