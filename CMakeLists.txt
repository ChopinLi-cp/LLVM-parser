cmake_minimum_required(VERSION 3.10)


add_library(llvmir-emul STATIC
        llvmir_emul.cpp
        )

#add_library(retdec::llvmir-emul ALIAS llvmir-emul)

target_compile_features(llvmir-emul PUBLIC cxx_std_14)

target_include_directories(llvmir-emul
        PUBLIC
        $<BUILD_INTERFACE:${EMUL_INCLUDE_DIR}>
        $<INSTALL_INTERFACE:${EMUL_INSTALL_INCLUDE_DIR}>
        )

find_package(LLVM
            REQUIRED
            CONFIG
            PATHS ${LLVM_HOME_PATH})

if (LLVM_HOME_PATH)

    find_package(LLVM
            REQUIRED
            CONFIG
            PATHS ${LLVM_HOME_PATH})

    message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
    message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

    # Set your project compile flags.
    # E.g. if using the C++ header files
    # you will need to enable C++11 support
    # for your compiler.

    include_directories(${LLVM_INCLUDE_DIRS})
    add_definitions(${LLVM_DEFINITIONS})

    # Now build our tools
#    add_executable(UnitTest main.cpp)

    # Find the libraries that correspond to the LLVM components
    # that we wish to use
    llvm_map_components_to_libnames(llvm_libs ${LLVM_LINK_COMPONENTS})


else()
    message(FATAL_ERROR)
endif()

target_link_libraries(llvmir-emul
        PUBLIC
        ${llvm_libs}
        )

set_target_properties(llvmir-emul
        PROPERTIES
        OUTPUT_NAME "llvmir-emul"
        )

# Install includes.
install(
        DIRECTORY ${EMUL_INCLUDE_DIR}/llvmir-emul
        DESTINATION ${EMUL_INSTALL_INCLUDE_DIR}/llvmir-emul
)

# Install libs.
install(TARGETS llvmir-emul
        EXPORT llvmir-emul-targets
        ARCHIVE DESTINATION ${EMUL_INSTALL_LIB_DIR}
        LIBRARY DESTINATION ${EMUL_INSTALL_LIB_DIR}
        )

## Export targets.
#install(EXPORT llvmir-emul-targets
#        FILE "retdec-llvmir-emul-targets.cmake"
#        NAMESPACE retdec::
#        DESTINATION ${RETDEC_INSTALL_CMAKE_DIR}
#        )
#
# Install CMake files.
configure_file(
        "retdec-llvmir-emul-config.cmake"
        "${CMAKE_CURRENT_BINARY_DIR}/retdec-llvmir-emul-config.cmake"
        @ONLY
)
#install(
#        FILES
#        "${CMAKE_CURRENT_BINARY_DIR}/retdec-llvmir-emul-config.cmake"
#        DESTINATION
#        "${RETDEC_INSTALL_CMAKE_DIR}"
#)


#cmake_minimum_required(VERSION 3.10)
#project(UnitTest)
#
#set(CMAKE_CXX_STANDARD 14)
#
#set(LLVM_LINK_COMPONENTS
#        BitWriter
#        IRReader
#        Object
#        InstCombine
#        ipo
#        AsmParser
#        BitReader
#        MCParser
#        CodeGen
#        ProfileData   # needed by ScalarOpts
#        Support       # has to be after LLVMProfileData
#        ScalarOpts
#        TransformUtils
#        Analysis
#        Target
#        Core
#        MC
#        Object
#        )
#
#add_executable(UnitTest
#        llvm_emul_tests.cpp
#        )
#
#target_include_directories(UnitTest
#        PRIVATE
#        ${RETDEC_TESTS_DIR}
#        )
#
#set_target_properties(UnitTest
#        PROPERTIES
#        OUTPUT_NAME "UniTest"
#        )
#
#if (LLVM_HOME_PATH)
#
#    find_package(LLVM
#            REQUIRED
#            CONFIG
#            PATHS ${LLVM_HOME_PATH})
#
#    find_package(GTest
#            REQUIRED
#            CONFIG
#            PATHS ${GTEST_HOME_PATH})
#
#    include_directories(${GTEST_HOME_PATH}/include)
#
#    #include_directories(${LLVM_INCLUDE_DIRS})
#    #add_definitions(${LLVM_DEFINITIONS})
#
#    #add_executable(LLVMEmu main.cpp)
#
#    #llvm_map_components_to_libnames(llvm_libs ${LLVM_LINK_COMPONENTS})
#    ##llvm_map_components_to_libnames(llvm_libs clang)
#
#    #target_link_libraries(LLVMEmu ${llvm_libs})
#
#
#    message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
#    message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
#
#    # Set your project compile flags.
#    # E.g. if using the C++ header files
#    # you will need to enable C++11 support
#    # for your compiler.
#
#    include_directories(${LLVM_INCLUDE_DIRS})
#    add_definitions(${LLVM_DEFINITIONS})
#
#    # Now build our tools
##    add_executable(UnitTest main.cpp)
#
#    # Find the libraries that correspond to the LLVM components
#    # that we wish to use
#    #llvm_map_components_to_libnames(llvm_libs support core irreader)
#    llvm_map_components_to_libnames(llvm_libs ${LLVM_LINK_COMPONENTS})
#    #message(STATUS "${LLVM_LINK_COMPONENTS}")
#
#    # Link against LLVM libraries
##    LINK_DIRECTORIES(/home/lichengpeng/local/googletest/lib64)
#    target_link_libraries(UnitTest ${llvm_libs} GTest)
#
#else()
#    message(FATAL_ERROR)
#endif()
#
#
#
#
#install(TARGETS UnitTest
#        RUNTIME DESTINATION ${RETDEC_INSTALL_TESTS_DIR}
#        )