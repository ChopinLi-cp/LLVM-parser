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
